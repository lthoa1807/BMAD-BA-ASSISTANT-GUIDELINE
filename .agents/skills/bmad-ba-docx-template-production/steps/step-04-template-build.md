# Step 4: Template Build

## Goal

Create a reusable JSON template that captures the source document structure and complex formatting behavior.

## Instructions

Build `template.json` using `resources/template-schema.json` as the capability guide. The template should include:

- `metadata`: template name, version, description, source document, author, and created date.
- `page`: margins, orientation, default font, and default size.
- `styles`: reusable paragraph and table style definitions.
- `fields`: required and optional user input fields.
- `blocks`: ordered document blocks such as paragraphs, headings, tables, bullet lists, repeat sections, images, and signatures.

Use placeholders in the form `{{field_name}}`. For repeating data, use `source` keys such as `follow_up_items`, `rows`, or `sections`.

Prefer faithful reproduction. Improve only when the source structure is inconsistent, fragile, or less readable, and record the decision.

## Output Fragment

Create:

- `{ba_artifacts}/documents/docx-template-production/working/<document-name>/template.json`
- `{ba_artifacts}/documents/docx-template-production/working/<document-name>/template-notes.md`

If the user wants reuse, copy the approved template to `{ba_artifacts}/documents/docx-template-production/templates/<template-name>/template.json`.

## Step Documentation

Create or update `{ba_artifacts}/documents/docx-template-production/working/<document-name>/step-04-template-build.md` with:

- Workflow and step name
- Format profile reviewed
- Template path
- Supported format features
- Unsupported or deferred features
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` when available.

## Next

Continue with `./step-05-user-content-mapping.md`.
