# Step 3: Source Extraction

## Goal

Extract ordered source text and images from the raw `.docx` without modifying the source file.

## Instructions

Read the `.docx` as a Word OpenXML package. Extract:

- Document paragraphs, headings, tables, lists, captions, and visible text in source order.
- Images from `word/media/`.
- Relationships that help place images near related text when available.
- Source metadata that helps explain version, title, author, or creation context when useful.

Save images under `{ba_artifacts}/documents/_shared-assets/<document-name>/images/` with sequential names such as `image-001.png`, `image-002.jpg`, or the source extension when known.

Record extraction counts:

- Text blocks extracted
- Tables extracted
- Images extracted
- Images skipped, with reason
- Unsupported or unreadable elements

Do not drop images silently. If image placement cannot be determined, keep the image and mark placement as uncertain for review.

## Output Fragment

Create a source extraction summary with counts, extracted image list, uncertain placements, unsupported content, and extraction risks.

## Step Documentation

Create or update `{ba_artifacts}/documents/working-doc/<document-name>/step-03-source-extraction-notes.md` with:

- Workflow and step name
- Source package reviewed
- Extraction method and tools used
- Extracted text, table, and image counts
- Image inventory with `DOC-###` IDs where useful
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

Continue with `./step-04-draft-generation.md`.
