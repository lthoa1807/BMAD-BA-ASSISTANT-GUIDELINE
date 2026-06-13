# Short Document Generation Workflow

Use this runtime template with `bmad-ba-short-doc-production`.

## Runtime Flow

1. Confirm source `.docx`, document name, version, audience, output needs, and sensitivity concerns.
2. Ensure the short document template exists under `{ba_artifacts}/documents/template-doc/short-doc/`.
3. Extract source text and images without editing the original `.docx`.
4. Generate `working-doc/<document-name>/draft.md` from the extracted content.
5. Record assumptions, open questions, review notes, and image placement uncertainty.
6. Finalize Markdown under `final-doc/<document-name>/` when ready.
7. Export `.docx` only when a supported export path is available.
8. Ask before creating `_complete-package/`.
9. Create the package snapshot and manifest after confirmation.
10. Verify the package, then ask before cleanup.

## Required Runtime Records

- `draft.md`
- `open-questions.md`
- `assumptions.md`
- `review-notes.md`
- Final Markdown
- Optional Word export
- `changelog.md`
- `_complete-package/v<version>/manifest.md`

## Stop Points

- Stop if required source input is missing.
- Stop if the runtime template is missing required files and the user declines repair but the remaining template is insufficient.
- Stop before package creation until the user confirms.
- Stop before cleanup until package verification is complete and the user confirms cleanup.
