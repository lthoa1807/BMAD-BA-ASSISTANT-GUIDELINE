# Step 7: Word Export

## Goal

Export `.docx` from final Markdown when a supported export path is available, then verify the generated package.

## Instructions

Preferred export order:

1. Use `pandoc` when available.
2. Use LibreOffice `soffice` when available and suitable.
3. Use direct Word OpenXML generation only if the implementation includes deterministic generation logic that creates at minimum `[Content_Types].xml`, `_rels/.rels`, `word/document.xml`, `word/_rels/document.xml.rels`, and embedded image parts under `word/media/`.

Export from `{ba_artifacts}/documents/final-doc/<document-name>/<document-name>-v<version>.md` to `{ba_artifacts}/documents/final-doc/<document-name>/<document-name>-v<version>.docx`.

Verify:

- The `.docx` file exists and is readable as a zip package.
- Required core Word package parts exist.
- Expected images are embedded or the missing images are documented.
- The final Markdown remains the source of record for the exported document.

If no supported export path is available, do not claim Word export is complete. Produce final Markdown, record the blocked Word export in `review-notes.md` or the final summary, and ask whether the user wants to proceed without `.docx`.

## Output Fragment

Create a Word export summary with export method, output path, verification result, missing images or blocked export reason, and recommended next action.

## Step Documentation

Create or update `{ba_artifacts}/documents/final-doc/<document-name>/step-07-word-export-notes.md` with:

- Workflow and step name
- Export method attempted
- Commands or tooling used
- Verification checks performed
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

Continue with `./step-08-package-confirmation.md` only if the user wants or expects a complete package.
