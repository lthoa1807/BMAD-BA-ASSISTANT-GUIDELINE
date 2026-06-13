# Step 07 Word Export Notes

## Workflow and Step

- Workflow: BA Short Document Production
- Step: Step 07 - Word Export
- Date: 2026-05-25

## Export Method Attempted

- `pandoc`: not available in the current environment.
- LibreOffice `soffice`: not available in the current environment.
- Direct Word OpenXML generation: used successfully.

## Commands or Tooling Used

- Export script: `ba_artifacts/documents/working-doc/fbo-installation-guide/export-docx.ps1`
- Source Markdown: `ba_artifacts/documents/final-doc/fbo-installation-guide/fbo-installation-guide-v0.1.md`
- Output Word file: `ba_artifacts/documents/final-doc/fbo-installation-guide/fbo-installation-guide-v0.1.docx`

## Verification Checks Performed

The generated `.docx` was opened as a zip package and verified for required OpenXML parts:

| Required Part | Result |
| --- | --- |
| `[Content_Types].xml` | OK |
| `_rels/.rels` | OK |
| `word/document.xml` | OK |
| `word/_rels/document.xml.rels` | OK |
| `word/styles.xml` | OK |
| Embedded images | 8 |

## Questions Asked

- No questions were asked during export.

## User Responses and Evidence

- User asked whether the document was completed.

## Decisions

- DEC-020: Use direct Word OpenXML generation because `pandoc` and LibreOffice were unavailable.
- DEC-021: Keep final Markdown as the source of record and treat `.docx` as an exported deliverable.
- DEC-022: Do not create `_complete-package/` until the user explicitly confirms packaging.

## Assumptions

- The generated `.docx` is suitable for review, but visual formatting should be checked in Microsoft Word before formal distribution.

## Risks

- RISK-013: Direct OpenXML export provides a functional Word document but may not match advanced Word styling produced by a full document conversion tool.

## Open Questions

- Q-010: Should a complete archival package be created under `_complete-package/v0.1/`?
- Q-011: Should IT/FAST review be incorporated into a revised `v0.2`?

## Output Fragment

Word export completed successfully. The `.docx` package contains the required core Word parts and 8 embedded screenshots.

## Next Action

- Ask the user whether to create the complete package snapshot.
