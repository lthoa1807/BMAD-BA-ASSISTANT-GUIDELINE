# Step 3: Format Profile

## Goal

Turn raw extraction data into a readable description of the source document's structure and formatting rules.

## Instructions

Review `source-extraction.json` and summarize:

- Page setup: page size, margins, orientation, default font, and base paragraph spacing.
- Title/header behavior: alignment, font size, bolding, capitalization, subtitle usage.
- Section hierarchy: heading levels, numbering, spacing, and separators.
- Tables: table purposes, column counts, column widths if known, header shading, border style, repeated headers, text alignment, and vertical alignment.
- Signature or approval blocks: number of columns, labels, blank signing space, and alignment.
- Images: intended placement, captions, and uncertainty.
- Reusable placeholders that should become template fields.
- Opportunities to improve clarity without changing business meaning.

Keep the profile practical. It should be enough for another agent or script to rebuild the document style without reopening the source Word file.

## Output Fragment

Create `{ba_artifacts}/documents/docx-template-production/working/<document-name>/format-profile.md`.

## Step Documentation

Create or update `{ba_artifacts}/documents/docx-template-production/working/<document-name>/step-03-format-profile.md` with:

- Workflow and step name
- Source extraction reviewed
- Detected layout rules
- Improvement recommendations
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` when available.

## Next

Continue with `./step-04-template-build.md`.
