# Step 9: Complete Package

## Goal

Create the archival complete package snapshot under `final-doc/<document-name>/_complete-package/v<version>/`.

## Instructions

Create `{ba_artifacts}/documents/final-doc/<document-name>/_complete-package/v<version>/` with these mandatory components:

- `source/`
- `template/`
- `working/`
- `assets/images/`
- `final/`
- `manifest.md`

Copy rules:

- Copy the raw `.docx` source from `{ba_artifacts}/documents/incoming-doc/` into `_complete-package/v<version>/source/`.
- Do not create `_complete-package/v<version>/incoming/`; `incoming-doc/` remains only the runtime input folder, not a package subfolder.
- Copy runtime template files from `{ba_artifacts}/documents/template-doc/short-doc/` into `_complete-package/v<version>/template/`.
- Copy draft and review records from `{ba_artifacts}/documents/working-doc/<document-name>/` into `_complete-package/v<version>/working/`.
- Copy extracted images from `{ba_artifacts}/documents/_shared-assets/<document-name>/images/` into `_complete-package/v<version>/assets/images/`.
- Copy final Markdown, Word export when present, and changelog from `final-doc/<document-name>/` into `_complete-package/v<version>/final/`.
- Keep the original final files in `final-doc/<document-name>/`; the `final/` folder inside `_complete-package/` is a duplicate archival copy, not the working final location.

Create `manifest.md` with:

- Document name and version
- Package creation date
- Source file list
- Template file list
- Working file list
- Asset image list
- Final file list
- Known omissions and reasons
- Verification checklist placeholder for Step 10
- User confirmation reference from Step 8

If the package version folder already exists, ask before replacing, merging, or creating a new package version.

## Output Fragment

Create a package creation summary with package path, copied components, missing components, and items needing verification.

## Step Documentation

Create or update `{ba_artifacts}/documents/final-doc/<document-name>/step-09-complete-package-notes.md` with:

- Workflow and step name
- Package path
- Files copied
- Missing or skipped files with reasons
- Questions asked
- User responses and evidence
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-10-package-verification-and-cleanup.md`.
