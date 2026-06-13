# BA Short Document Production Workflow

## Purpose

Produce a standardized short document from a raw `.docx` source while preserving source intake, extraction records, template guidance, draft work, review records, final outputs, complete package archival, and cleanup guardrails.

## Runtime Structure

Use this structure under `{ba_artifacts}/documents/`:

- `incoming-doc/` for read-only raw `.docx` source files.
- `template-doc/short-doc/` for the runtime reusable short document template.
- `working-doc/<document-name>/` for draft, questions, assumptions, and review notes.
- `_shared-assets/<document-name>/images/` for extracted images.
- `final-doc/<document-name>/` for final Markdown, Word export, changelog, and `_complete-package/`.
- `_archive/` for retired or manually archived document data.

## Steps

1. `./steps/step-01-support-intake.md` - Confirm source, output target, document name, version, languages, and sensitivity concerns.
2. `./steps/step-02-template-bootstrap.md` - Create lifecycle folders and seed or repair the short document template.
3. `./steps/step-03-source-extraction.md` - Extract source text and images from Word OpenXML without editing the source file.
4. `./steps/step-04-draft-generation.md` - Generate the working draft from extracted content and template guidance.
5. `./steps/step-05-review-records.md` - Record open questions, assumptions, extraction notes, and image placement concerns.
6. `./steps/step-06-finalization.md` - Create final Markdown and changelog when readiness is sufficient or the user requests finalization.
7. `./steps/step-07-word-export.md` - Export `.docx` when a supported export path is available and verify core output structure.
8. `./steps/step-08-package-confirmation.md` - Ask for explicit confirmation before creating `_complete-package/`.
9. `./steps/step-09-complete-package.md` - Create the archival complete package snapshot and manifest.
10. `./steps/step-10-package-verification-and-cleanup.md` - Verify package completeness and ask before cleanup.

## Guardrails

- Do not edit raw source files in `incoming-doc/`.
- Do not drop extracted images without a documented reason.
- Do not move to final output while important sections or images are unresolved unless the user explicitly accepts the caveat.
- Do not create a separate `package-doc/` folder.
- Do not create `_complete-package/` without explicit user confirmation.
- Do not use `_complete-package/` as the primary working area; it is an archival snapshot.
- Do not cleanup `incoming-doc/`, `working-doc/<document-name>/`, or `_shared-assets/<document-name>/` before package verification.
- Do not cleanup without explicit user confirmation.
- Do not delete shared templates.
- Do not delete `final-doc/<document-name>/` during cleanup.
- Maintain step records under `working-doc/<document-name>/` or `final-doc/<document-name>/` as appropriate and update `{ba_artifacts}/ba-worklog-index.md` after each completed step.
- Use stable trace IDs for document items, extraction notes, decisions, risks, and questions: `DOC-001`, `DEC-001`, `RISK-001`, and `Q-001`.
