# Step 6: DOCX Generation

## Goal

Generate the final Word document from `template.json` and `content-input.json`.

## Instructions

Use the bundled generator when `python-docx` is available:

```powershell
py .agents/skills/bmad-ba-docx-template-production/scripts/generate_docx_from_template.py <template-json> <content-json> --output <final-folder>/<document-name>.docx
```

The generator should support:

- Paragraph, heading, bullet list, table, spacer, image, page break, and signature blocks.
- Paragraph alignment including center alignment.
- Table header shading, borders, column widths, and cell paragraph alignment.
- Placeholder substitution using `{{field_name}}` syntax.
- Repeating rows from list data in the user content JSON.

If generation is blocked, report the exact blocker and keep the template and content JSON ready for later execution.

## Output Fragment

Create a generation summary with command used, output path, generation result, and blocked items if any.

## Step Documentation

Create or update `{ba_artifacts}/documents/docx-template-production/final/<document-name>/step-06-docx-generation.md` with:

- Workflow and step name
- Template path
- Content JSON path
- Output DOCX path
- Command or method used
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` when available.

## Next

Continue with `./step-07-verification.md`.
