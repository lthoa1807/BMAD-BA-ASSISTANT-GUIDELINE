# Step 1: Support Intake

## Goal

Confirm the minimum inputs needed to produce the short document and create the shared document lifecycle folders.

## Instructions

Confirm or derive:

- Source `.docx` file path under `{ba_artifacts}/documents/incoming-doc/`.
- Requested output: draft only, final Markdown, Word export, complete package, or cleanup after packaging.
- Document name and safe folder slug for `<document-name>`.
- Target version string for final outputs and package folder `v<version>`.
- User-facing document language and communication language.
- Audience, product or process scope, owner, and known source limitations.
- Sensitive data, customer-specific content, screenshots, or redaction concerns.

Ask only the minimum required questions. If the source file is outside `incoming-doc/`, ask whether to copy it into `incoming-doc/` before continuing. Do not modify the original source file.

Create these lifecycle folders if missing:

- `{ba_artifacts}/documents/incoming-doc/`
- `{ba_artifacts}/documents/template-doc/`
- `{ba_artifacts}/documents/working-doc/`
- `{ba_artifacts}/documents/final-doc/`
- `{ba_artifacts}/documents/_shared-assets/`
- `{ba_artifacts}/documents/_archive/`

Do not create document-specific working folders until the document name is confirmed or safely derived.

## Output Fragment

Create an intake summary with source path, document name, version, requested outputs, language choices, sensitivity concerns, initial assumptions, and open questions.

## Step Documentation

After the document name is confirmed, create or update `{ba_artifacts}/documents/working-doc/<document-name>/step-01-support-intake-notes.md` with:

- Workflow and step name
- Inputs reviewed
- Questions asked
- User responses and evidence
- Confirmed document metadata with `DOC-###` IDs where useful
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-02-template-bootstrap.md`.
