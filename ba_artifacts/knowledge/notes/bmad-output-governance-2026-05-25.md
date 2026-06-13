# BMad Output Governance Note

Date: 2026-05-25

## Purpose

Standardize output folders so BA artifacts stay separate from general BMad outputs.

## Team Rules

- Keep core output at `{project-root}/_bmad-output`.
- Keep BA Assistant artifacts at `{project-root}/ba_artifacts`.
- Do not edit installer-managed files directly:
  - `_bmad/config.toml`
  - `_bmad/config.user.toml`
- Pin team-level overrides in `_bmad/custom/config.toml`.

## Effective Config Policy

The effective merged config must resolve to:

```toml
[core]
output_folder = "{project-root}/_bmad-output"

[modules.ba-assistant]
ba_artifacts = "{project-root}/ba_artifacts"
```

## Post-Install Validation Checklist

Run after install or update:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\verify-bmad-layout.ps1
```

Pass criteria:

- `core.output_folder` and `modules.ba-assistant.ba_artifacts` are both present.
- `modules.ba-assistant.ba_artifacts` equals `{project-root}/ba_artifacts`.
- `core.output_folder` and `ba_artifacts` are not the same path.
- `_bmad/_config/files-manifest.csv` has 0 missing entries.
- `_bmad/_config/skill-manifest.csv` has 0 missing entries.

## Notes

- BA workflows write under `ba_artifacts` by design.
- Core/BMM workflows may still write under `_bmad-output`.
