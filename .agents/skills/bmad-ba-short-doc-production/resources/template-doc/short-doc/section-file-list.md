# Short Document Section File List

For a short document, produce one `draft.md` and one final Markdown file by default.

If the source is longer than expected, the draft may be split into section files during working review, then merged before finalization:

- `01-overview.md`
- `02-scope.md`
- `03-key-context.md`
- `04-main-content.md`
- `05-actions-or-details.md`
- `06-exceptions-risks-or-open-questions.md`
- `07-reference-information.md`
- `08-faq.md`
- `09-change-history.md`

Final output should still be created as:

- `<document-name>-v<version>.md`
- `<document-name>-v<version>.docx` when export succeeds
- `changelog.md`

Use section files only when they make review easier. Do not create unnecessary files for short documents.
