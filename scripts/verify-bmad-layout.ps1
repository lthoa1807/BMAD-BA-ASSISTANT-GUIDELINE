param(
    [string]$ProjectRoot = ""
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($ProjectRoot)) {
    $ProjectRoot = (Resolve-Path -LiteralPath (Join-Path -Path $PSScriptRoot -ChildPath "..")).Path
} else {
    $ProjectRoot = (Resolve-Path -LiteralPath $ProjectRoot).Path
}

function Expand-ProjectRootPath {
    param([Parameter(Mandatory = $true)][string]$PathValue)
    $expanded = $PathValue.Replace("{project-root}", $ProjectRoot)
    return [System.IO.Path]::GetFullPath($expanded)
}

function Get-MissingManifestEntries {
    param(
        [Parameter(Mandatory = $true)][string]$CsvPath,
        [Parameter(Mandatory = $true)][ValidateSet("files", "skills")][string]$ManifestType
    )

    if (-not (Test-Path -LiteralPath $CsvPath)) {
        return ,@("Missing manifest file: $CsvPath")
    }

    $missing = @()
    $rows = Import-Csv -LiteralPath $CsvPath
    foreach ($row in $rows) {
        if ([string]::IsNullOrWhiteSpace($row.path)) {
            continue
        }

        $relativePath = $row.path.Replace("/", "\")
        $targetPath = ""

        if ($ManifestType -eq "skills" -and $relativePath.StartsWith("_bmad\", [System.StringComparison]::OrdinalIgnoreCase)) {
            $targetPath = Join-Path -Path $ProjectRoot -ChildPath $relativePath
        } else {
            $targetPath = Join-Path -Path (Join-Path -Path $ProjectRoot -ChildPath "_bmad") -ChildPath $relativePath
        }

        if (-not (Test-Path -LiteralPath $targetPath)) {
            $missing += $row.path
        }
    }

    return ,$missing
}

$resolveConfigScript = Join-Path -Path $ProjectRoot -ChildPath "_bmad\scripts\resolve_config.py"
if (-not (Test-Path -LiteralPath $resolveConfigScript)) {
    throw "Cannot find resolve_config.py at $resolveConfigScript"
}

$resolvedJson = & py -3 $resolveConfigScript --project-root $ProjectRoot --key core.output_folder --key modules.ba-assistant.ba_artifacts
if (-not $?) {
    throw "Failed to resolve BMad config using $resolveConfigScript"
}

$resolved = $resolvedJson | ConvertFrom-Json
$outputFolder = [string]$resolved.'core.output_folder'
$baArtifacts = [string]$resolved.'modules.ba-assistant.ba_artifacts'

$issues = @()

if ([string]::IsNullOrWhiteSpace($outputFolder)) {
    $issues += "Missing config key: core.output_folder"
}
if ([string]::IsNullOrWhiteSpace($baArtifacts)) {
    $issues += "Missing config key: modules.ba-assistant.ba_artifacts"
}

if ($baArtifacts -ne "{project-root}/ba_artifacts") {
    $issues += "Unexpected ba_artifacts path: '$baArtifacts' (expected '{project-root}/ba_artifacts')"
}

if ($outputFolder -eq $baArtifacts) {
    $issues += "output_folder and ba_artifacts must be separated, but both resolve to '$outputFolder'"
}

if ($issues.Count -eq 0) {
    $outputFolderPath = Expand-ProjectRootPath -PathValue $outputFolder
    $baArtifactsPath = Expand-ProjectRootPath -PathValue $baArtifacts

    if (-not (Test-Path -LiteralPath $outputFolderPath)) {
        $issues += "Output folder does not exist: $outputFolderPath"
    }
    if (-not (Test-Path -LiteralPath $baArtifactsPath)) {
        $issues += "BA artifacts folder does not exist: $baArtifactsPath"
    }
}

$filesManifestPath = Join-Path -Path $ProjectRoot -ChildPath "_bmad\_config\files-manifest.csv"
$skillsManifestPath = Join-Path -Path $ProjectRoot -ChildPath "_bmad\_config\skill-manifest.csv"

$missingFiles = Get-MissingManifestEntries -CsvPath $filesManifestPath -ManifestType files
$missingSkills = Get-MissingManifestEntries -CsvPath $skillsManifestPath -ManifestType skills

if (@($missingFiles).Count -gt 0) {
    $issues += "files-manifest.csv has $(@($missingFiles).Count) missing entries"
}
if (@($missingSkills).Count -gt 0) {
    $issues += "skill-manifest.csv has $(@($missingSkills).Count) missing entries"
}

"Project root: $ProjectRoot"
"core.output_folder: $outputFolder"
"modules.ba-assistant.ba_artifacts: $baArtifacts"
"files-manifest missing entries: $(@($missingFiles).Count)"
"skill-manifest missing entries: $(@($missingSkills).Count)"

if ($issues.Count -gt 0) {
    ""
    "Verification result: FAILED"
    foreach ($issue in $issues) {
        "- $issue"
    }

    if (@($missingFiles).Count -gt 0) {
        ""
        "First missing file-manifest entries:"
        $missingFiles | Select-Object -First 10 | ForEach-Object { "- $_" }
    }

    if (@($missingSkills).Count -gt 0) {
        ""
        "First missing skill-manifest entries:"
        $missingSkills | Select-Object -First 10 | ForEach-Object { "- $_" }
    }

    exit 1
}

""
"Verification result: PASSED"
exit 0
