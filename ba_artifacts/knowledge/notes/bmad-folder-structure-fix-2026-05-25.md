# BMad Folder Structure Fix Note

Date: 2026-05-25

## Context

The repository was rechecked against the installed BMad manifests and configuration after the visible folder structure appeared mostly correct. A stricter check found that the runtime skill exports existed, but the installer-managed BMad source structure and configured BA output path were not fully aligned.

## Issues Found

- `_bmad/_config/skill-manifest.csv` expected 25 source skill files under `_bmad/core/...` and `_bmad/ba-assistant/...`, but those source skill folders were missing.
- `_bmad/_config/files-manifest.csv` expected 134 files; 112 were missing before the fix.
- Effective BA Assistant config resolved `ba_artifacts` to `{project-root}/docs/ba-assistant`, while actual BA work was stored under `{project-root}/ba_artifacts`.
- `docs/ba-assistant` existed but was empty.

## Fix Applied

- Added a team override in `_bmad/custom/config.toml`:

```toml
[modules.ba-assistant]
ba_artifacts = "{project-root}/ba_artifacts"
```

- Restored missing source skill folders under:
  - `_bmad/core/`
  - `_bmad/ba-assistant/`
- Used `.agents/skills` as the source copy because it contained the complete 25-skill runtime export.

## Verification Results

- `_bmad/_config/files-manifest.csv`: 134 expected, 0 missing.
- `_bmad/_config/skill-manifest.csv`: 25 expected, 0 missing.
- SHA256 manifest check: 0 mismatches.
- Effective config now resolves BA Assistant artifacts to `{project-root}/ba_artifacts`.

## Outcome

The repository now follows the BMad structure more cleanly:

- `_bmad/` contains the source module structure expected by the manifests.
- `.agents/`, `.claude/`, `.agent/`, and `.opencode/` contain runtime or tool-specific exports.
- `ba_artifacts/` is the canonical BA output and work artifact folder.

## Note

The worktree already had many modified and untracked BMad files before this fix. Those unrelated changes were left untouched.
