# Step 7: Verification

## Goal

Verify the generated `.docx` package and record any fidelity gaps before the user sends or reuses it.

## Instructions

Verify:

- The `.docx` file exists and can be opened as a zip package.
- Required Word parts exist: `[Content_Types].xml`, `_rels/.rels`, `word/document.xml`, and `word/_rels/document.xml.rels` when relationships exist.
- Expected document blocks were generated in order.
- Tables have the expected column counts and row counts.
- Center-aligned titles, table headers, and signature blocks were applied where required.
- Missing user content remains visible as placeholders.
- Unsupported source features are listed clearly.

Do not mark the output as complete if critical content is missing unless the user explicitly accepts the caveat.

## Output Fragment

Create `{ba_artifacts}/documents/docx-template-production/final/<document-name>/verification-notes.md` with verification result, caveats, open questions, and recommended next action.

## Step Documentation

Create or update `{ba_artifacts}/documents/docx-template-production/final/<document-name>/step-07-verification.md` with:

- Workflow and step name
- Output DOCX reviewed
- Verification checks performed
- Pass/fail result
- Fidelity gaps
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` when available.
