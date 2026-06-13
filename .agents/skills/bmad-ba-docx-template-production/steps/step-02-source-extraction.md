# Step 2: Source Extraction

## Goal

Extract content and visible formatting evidence from the source `.docx` without modifying it.

## Instructions

Use `scripts/extract_docx_format.py` when Python is available:

```powershell
py .agents/skills/bmad-ba-docx-template-production/scripts/extract_docx_format.py <source-docx> --output <working-folder>/source-extraction.json --images <asset-folder>/images
```

Extract and record:

- Paragraphs, headings, lists, captions, and visible text in source order.
- Paragraph alignment, style name, bold, italic, font name, font size, spacing, and indentation when available.
- Tables, rows, cells, cell text, detected header row, cell shading, borders, alignment, and merged-cell indicators when available.
- Images from `word/media/` with sequential output names.
- Core document properties and section margins when available.
- Unsupported or ambiguous elements.

If script execution is not available, inspect the `.docx` as an OpenXML zip package and create the same extraction JSON manually as far as possible.

## Output Fragment

Create a source extraction summary with counts, important extracted structures, image inventory, unsupported elements, and extraction risks.

## Step Documentation

Create or update `{ba_artifacts}/documents/docx-template-production/working/<document-name>/step-02-source-extraction.md` with:

- Workflow and step name
- Source package reviewed
- Extraction command or method
- Counts for paragraphs, tables, rows, cells, and images
- Image inventory with `DOC-###` IDs where useful
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

Continue with `./step-03-format-profile.md`.
