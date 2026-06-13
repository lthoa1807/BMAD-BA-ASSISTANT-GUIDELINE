param(
    [Parameter(Mandatory = $true)] [string] $MarkdownPath,
    [Parameter(Mandatory = $true)] [string] $OutputPath
)

$ErrorActionPreference = "Stop"

function Escape-Xml([string] $Text) {
    if ($null -eq $Text) { return "" }
    return [System.Security.SecurityElement]::Escape($Text)
}

function Get-PlainText([string] $Text) {
    $value = $Text -replace "\*\*([^*]+)\*\*", '$1'
    $value = $value -replace '`([^`]+)`', '$1'
    return $value
}

function Add-Paragraph([System.Collections.Generic.List[string]] $Parts, [string] $Text, [string] $Style = "") {
    $escaped = Escape-Xml (Get-PlainText $Text)
    if ([string]::IsNullOrWhiteSpace($escaped)) {
        $Parts.Add("<w:p/>")
        return
    }
    $styleXml = ""
    if (-not [string]::IsNullOrWhiteSpace($Style)) {
        $styleXml = "<w:pPr><w:pStyle w:val=`"$Style`"/></w:pPr>"
    }
    $Parts.Add("<w:p>$styleXml<w:r><w:t xml:space=`"preserve`">$escaped</w:t></w:r></w:p>")
}

function Add-Bullet([System.Collections.Generic.List[string]] $Parts, [string] $Text) {
    $escaped = Escape-Xml (Get-PlainText $Text)
    $Parts.Add("<w:p><w:pPr><w:pStyle w:val=`"ListParagraph`"/><w:ind w:left=`"720`" w:hanging=`"360`"/></w:pPr><w:r><w:t xml:space=`"preserve`">- $escaped</w:t></w:r></w:p>")
}

function Add-Numbered([System.Collections.Generic.List[string]] $Parts, [string] $Text) {
    $escaped = Escape-Xml (Get-PlainText $Text)
    $Parts.Add("<w:p><w:pPr><w:pStyle w:val=`"ListParagraph`"/><w:ind w:left=`"720`" w:hanging=`"360`"/></w:pPr><w:r><w:t xml:space=`"preserve`">$escaped</w:t></w:r></w:p>")
}

function Add-Table([System.Collections.Generic.List[string]] $Parts, [string[]] $Rows) {
    if ($Rows.Count -eq 0) { return }
    $table = New-Object System.Text.StringBuilder
    [void] $table.Append("<w:tbl><w:tblPr><w:tblW w:w=`"0`" w:type=`"auto`"/><w:tblBorders><w:top w:val=`"single`" w:sz=`"4`" w:space=`"0`" w:color=`"auto`"/><w:left w:val=`"single`" w:sz=`"4`" w:space=`"0`" w:color=`"auto`"/><w:bottom w:val=`"single`" w:sz=`"4`" w:space=`"0`" w:color=`"auto`"/><w:right w:val=`"single`" w:sz=`"4`" w:space=`"0`" w:color=`"auto`"/><w:insideH w:val=`"single`" w:sz=`"4`" w:space=`"0`" w:color=`"auto`"/><w:insideV w:val=`"single`" w:sz=`"4`" w:space=`"0`" w:color=`"auto`"/></w:tblBorders></w:tblPr>")
    foreach ($row in $Rows) {
        if ($row -match '^\|\s*-') { continue }
        $cells = $row.Trim().Trim('|').Split('|') | ForEach-Object { $_.Trim() }
        [void] $table.Append("<w:tr>")
        foreach ($cell in $cells) {
            $escaped = Escape-Xml (Get-PlainText $cell)
            [void] $table.Append("<w:tc><w:tcPr><w:tcW w:w=`"2400`" w:type=`"dxa`"/></w:tcPr><w:p><w:r><w:t xml:space=`"preserve`">$escaped</w:t></w:r></w:p></w:tc>")
        }
        [void] $table.Append("</w:tr>")
    }
    [void] $table.Append("</w:tbl>")
    $Parts.Add($table.ToString())
}

function Add-Image([System.Collections.Generic.List[string]] $Parts, [string] $Rid, [string] $AltText, [int] $Index) {
    $escapedAlt = Escape-Xml $AltText
    $cx = 5486400
    $cy = 3086100
    $Parts.Add(@"
<w:p><w:r><w:drawing><wp:inline distT="0" distB="0" distL="0" distR="0" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"><wp:extent cx="$cx" cy="$cy"/><wp:docPr id="$Index" name="Picture $Index" descr="$escapedAlt"/><a:graphic xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"><a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/picture"><pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture"><pic:nvPicPr><pic:cNvPr id="$Index" name="Picture $Index" descr="$escapedAlt"/><pic:cNvPicPr/></pic:nvPicPr><pic:blipFill><a:blip r:embed="$Rid"/><a:stretch><a:fillRect/></a:stretch></pic:blipFill><pic:spPr><a:xfrm><a:off x="0" y="0"/><a:ext cx="$cx" cy="$cy"/></a:xfrm><a:prstGeom prst="rect"><a:avLst/></a:prstGeom></pic:spPr></pic:pic></a:graphicData></a:graphic></wp:inline></w:drawing></w:r></w:p>
"@)
}

if (-not (Test-Path -LiteralPath $MarkdownPath)) { throw "Markdown not found: $MarkdownPath" }
$outputParent = Split-Path -Parent $OutputPath
if (-not (Test-Path -LiteralPath $outputParent)) { throw "Output parent not found: $outputParent" }

$root = Join-Path ([System.IO.Path]::GetTempPath()) ("fbo-docx-" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $root | Out-Null
try {
    New-Item -ItemType Directory -Path (Join-Path $root "_rels") | Out-Null
    New-Item -ItemType Directory -Path (Join-Path $root "word") | Out-Null
    New-Item -ItemType Directory -Path (Join-Path $root "word\_rels") | Out-Null
    New-Item -ItemType Directory -Path (Join-Path $root "word\media") | Out-Null

    $lines = Get-Content -LiteralPath $MarkdownPath -Encoding UTF8
    $bodyParts = New-Object 'System.Collections.Generic.List[string]'
    $relationships = New-Object 'System.Collections.Generic.List[string]'
    $tableRows = New-Object 'System.Collections.Generic.List[string]'
    $imageIndex = 1

    function Flush-Table {
        if ($tableRows.Count -gt 0) {
            Add-Table $bodyParts ($tableRows.ToArray())
            $tableRows.Clear()
        }
    }

    foreach ($line in $lines) {
        if ($line -match '^\|.*\|\s*$') {
            $tableRows.Add($line)
            continue
        }
        Flush-Table

        if ($line.Trim() -eq '---') { Add-Paragraph $bodyParts ""; continue }
        if ($line -match '^!\[(.*?)\]\((.*?)\)') {
            $alt = $Matches[1]
            $path = $Matches[2]
            $imagePath = [System.IO.Path]::GetFullPath((Join-Path (Split-Path -Parent $MarkdownPath) $path))
            if (-not (Test-Path -LiteralPath $imagePath)) { throw "Image not found: $imagePath" }
            $ext = [System.IO.Path]::GetExtension($imagePath).ToLowerInvariant()
            $mediaName = "image-$('{0:D3}' -f $imageIndex)$ext"
            Copy-Item -LiteralPath $imagePath -Destination (Join-Path $root "word\media\$mediaName")
            $rid = "rId$imageIndex"
            $relationships.Add("<Relationship Id=`"$rid`" Type=`"http://schemas.openxmlformats.org/officeDocument/2006/relationships/image`" Target=`"media/$mediaName`"/>")
            Add-Image $bodyParts $rid $alt $imageIndex
            $imageIndex++
            continue
        }
        if ($line -match '^# (.+)$') { Add-Paragraph $bodyParts $Matches[1] "Title"; continue }
        if ($line -match '^## (.+)$') { Add-Paragraph $bodyParts $Matches[1] "Heading1"; continue }
        if ($line -match '^### (.+)$') { Add-Paragraph $bodyParts $Matches[1] "Heading2"; continue }
        if ($line -match '^\s*-\s+(.+)$') { Add-Bullet $bodyParts $Matches[1]; continue }
        if ($line -match '^\s*\d+\.\s+(.+)$') { Add-Numbered $bodyParts $line.Trim(); continue }
        Add-Paragraph $bodyParts $line
    }
    Flush-Table

    $contentTypes = @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types"><Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/><Default Extension="xml" ContentType="application/xml"/><Default Extension="png" ContentType="image/png"/><Default Extension="jpg" ContentType="image/jpeg"/><Default Extension="jpeg" ContentType="image/jpeg"/><Override PartName="/word/document.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"/><Override PartName="/word/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml"/></Types>
'@
    $rootRels = @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships"><Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/></Relationships>
'@
    $docRels = "<?xml version=`"1.0`" encoding=`"UTF-8`" standalone=`"yes`"?><Relationships xmlns=`"http://schemas.openxmlformats.org/package/2006/relationships`"><Relationship Id=`"rIdStyles`" Type=`"http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles`" Target=`"styles.xml`"/>$($relationships -join '')</Relationships>"
    $styles = @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:styles xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"><w:style w:type="paragraph" w:default="1" w:styleId="Normal"><w:name w:val="Normal"/><w:rPr><w:sz w:val="22"/><w:szCs w:val="22"/></w:rPr></w:style><w:style w:type="paragraph" w:styleId="Title"><w:name w:val="Title"/><w:rPr><w:b/><w:sz w:val="36"/><w:szCs w:val="36"/></w:rPr></w:style><w:style w:type="paragraph" w:styleId="Heading1"><w:name w:val="heading 1"/><w:rPr><w:b/><w:sz w:val="28"/><w:szCs w:val="28"/></w:rPr></w:style><w:style w:type="paragraph" w:styleId="Heading2"><w:name w:val="heading 2"/><w:rPr><w:b/><w:sz w:val="24"/><w:szCs w:val="24"/></w:rPr></w:style><w:style w:type="paragraph" w:styleId="ListParagraph"><w:name w:val="List Paragraph"/></w:style></w:styles>
'@
    $documentXml = "<?xml version=`"1.0`" encoding=`"UTF-8`" standalone=`"yes`"?><w:document xmlns:w=`"http://schemas.openxmlformats.org/wordprocessingml/2006/main`" xmlns:r=`"http://schemas.openxmlformats.org/officeDocument/2006/relationships`"><w:body>$($bodyParts -join '')<w:sectPr><w:pgSz w:w=`"11906`" w:h=`"16838`"/><w:pgMar w:top=`"1440`" w:right=`"1440`" w:bottom=`"1440`" w:left=`"1440`" w:header=`"720`" w:footer=`"720`" w:gutter=`"0`"/></w:sectPr></w:body></w:document>"

    [System.IO.File]::WriteAllText((Join-Path $root "[Content_Types].xml"), $contentTypes, [System.Text.Encoding]::UTF8)
    [System.IO.File]::WriteAllText((Join-Path $root "_rels\.rels"), $rootRels, [System.Text.Encoding]::UTF8)
    [System.IO.File]::WriteAllText((Join-Path $root "word\_rels\document.xml.rels"), $docRels, [System.Text.Encoding]::UTF8)
    [System.IO.File]::WriteAllText((Join-Path $root "word\styles.xml"), $styles, [System.Text.Encoding]::UTF8)
    [System.IO.File]::WriteAllText((Join-Path $root "word\document.xml"), $documentXml, [System.Text.Encoding]::UTF8)

    if (Test-Path -LiteralPath $OutputPath) { Remove-Item -LiteralPath $OutputPath -Force }
    Add-Type -AssemblyName System.IO.Compression
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    $archive = [System.IO.Compression.ZipFile]::Open($OutputPath, [System.IO.Compression.ZipArchiveMode]::Create)
    try {
        foreach ($filePath in [System.IO.Directory]::GetFiles($root, "*", [System.IO.SearchOption]::AllDirectories)) {
            $relative = $filePath.Substring($root.Length).TrimStart('\', '/') -replace '\\', '/'
            $entry = $archive.CreateEntry($relative, [System.IO.Compression.CompressionLevel]::Optimal)
            $entryStream = $entry.Open()
            $fileStream = [System.IO.File]::OpenRead($filePath)
            try { $fileStream.CopyTo($entryStream) }
            finally {
                $fileStream.Close()
                $entryStream.Close()
            }
        }
    }
    finally {
        $archive.Dispose()
    }
    "Created $OutputPath with $($imageIndex - 1) embedded images."
}
finally {
    if (Test-Path -LiteralPath $root) { Remove-Item -LiteralPath $root -Recurse -Force }
}
