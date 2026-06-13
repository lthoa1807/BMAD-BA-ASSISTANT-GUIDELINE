# Step 1: Intake

## Goal

Confirm the source Word file and target output expectations before extraction and template generation.

## Instructions

Capture:

- Source `.docx` path.
- Document name and template name.
- Whether the output must exactly match the source or may improve readability.
- Target output language and tone.
- Required output paths, version, owner, and audience.
- Whether the template should be saved for reuse.
- Sensitivity concerns and fields that must not be guessed.

Ask only for missing information that blocks progress. If the user provided a source path and target purpose, proceed with reasonable defaults and record assumptions.

## Output Fragment

Create an intake summary with source path, document name, template name, output expectations, known constraints, assumptions, and open questions.

## Step Documentation

Create or update `{ba_artifacts}/documents/docx-template-production/working/<document-name>/step-01-intake.md` with:

- Workflow and step name
- Source path
- Output paths
- Questions asked
- User responses and evidence
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` when available.

## Next

Continue with `./step-02-source-extraction.md`.
