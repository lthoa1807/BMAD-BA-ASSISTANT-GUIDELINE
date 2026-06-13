# Step 2: Template Bootstrap

## Goal

Ensure `{ba_artifacts}/documents/template-doc/short-doc/` contains the required reusable short document template files before drafting begins.

## Required Runtime Template Files

The runtime template folder must contain:

- `README.md`
- `00-document-template.md`
- `writing-rules.md`
- `review-checklist.md`
- `generation-workflow.md`
- `section-map.md`
- `section-file-list.md`

## Instructions

Use packaged resources from `../resources/template-doc/short-doc/`.

Apply these rules:

- If `{ba_artifacts}/documents/template-doc/short-doc/` is missing, seed all required files from `../resources/template-doc/short-doc/`.
- If the folder exists and all required files exist, do not overwrite by default.
- If the folder exists but required files are missing, ask before adding the missing files.
- If a packaged template version marker is available and the runtime copy is older, ask before updating or create a versioned backup before replacement.
- If the user declines template repair or update, continue only if the existing template has enough information to produce the requested output; otherwise stop with the missing files listed.

Do not delete or replace shared templates without clear user confirmation.

## Output Fragment

Create a template bootstrap summary with files present, files seeded, files skipped, user confirmations, and any template limitations.

## Step Documentation

Create or update `{ba_artifacts}/documents/working-doc/<document-name>/step-02-template-bootstrap-notes.md` with:

- Workflow and step name
- Template files checked
- Files seeded or repaired
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

Continue with `./step-03-source-extraction.md`.
