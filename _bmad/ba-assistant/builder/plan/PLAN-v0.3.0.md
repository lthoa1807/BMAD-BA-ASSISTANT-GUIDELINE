# BA Assistant Module Plan v0.3.0

## Purpose

Expand the BA Assistant module with a reusable short document production capability based on the observed document workflow in the BA Assistant pilot project.

Version `0.3.0` should add an end-to-end workflow for turning a raw `.docx` source into a standardized short document with draft records, final Markdown, Word export, complete package archival, package verification, and user-confirmed cleanup.

## Key Decision

Add a new workflow skill instead of extending `bmad-ba-document-merge`.

Rationale:

- `bmad-ba-document-merge` is scoped to approved Markdown section merging.
- The existing merge workflow explicitly keeps `.docx` export out of scope.
- Short document production includes source intake, Word extraction, image handling, template bootstrap, finalization, export, packaging, and cleanup guardrails.
- Keeping it separate avoids weakening the current Markdown-only document workflow model.

## New Workflow Skill

Create:

```text
custom-modules/ba-assistant/bmad-ba-short-doc-production/
```

Skill name:

```text
bmad-ba-short-doc-production
```

Recommended menu code:

```text
BS
```

Display name:

```text
BA Short Document Production
```

Use when the user wants to create or standardize a short document from a raw `.docx` source, including extracted images, review records, final Markdown, Word export, complete package, and optional cleanup.

## Runtime Artifact Structure

The workflow should use this project runtime structure under `{ba_artifacts}`:

```text
{ba_artifacts}/documents/
  incoming-doc/
    <raw-file>.docx
  template-doc/
    short-doc/
      README.md
      00-document-template.md
      writing-rules.md
      review-checklist.md
      generation-workflow.md
      section-map.md
      section-file-list.md
  working-doc/
    <document-name>/
      draft.md
      open-questions.md
      assumptions.md
      review-notes.md
  _shared-assets/
    <document-name>/
      images/
        image-001.png
        image-002.png
  final-doc/
    <document-name>/
      <document-name>-v<version>.md
      <document-name>-v<version>.docx
      changelog.md
      _complete-package/
        v<version>/
          manifest.md
          source/
          template/
          working/
          assets/images/
          final/
  _archive/
```

## Packaged Template Resources

Package a sanitized, generic `template-doc/short-doc` resource inside the new workflow skill:

```text
custom-modules/ba-assistant/bmad-ba-short-doc-production/
  resources/
    template-doc/
      README.md
      short-doc/
        README.md
        00-document-template.md
        writing-rules.md
        review-checklist.md
        generation-workflow.md
        section-map.md
        section-file-list.md
```

Do not package:

- `sample-doc/`
- Real `.docx` sample files
- Project-specific generated final documents
- Customer-specific screenshots, product data, or runtime artifacts

The source resources should be generalized and written in English. Installed project outputs should follow the user's configured `communication_language` and `document_output_language`.

## Workflow Steps

Create up to 10 steps to stay within skill validation guidance:

1. `step-01-support-intake.md`
   Confirm the source `.docx`, requested output, document name, version, language, and sensitive-data concerns. Ask only minimum required questions.

2. `step-02-template-bootstrap.md`
   Check `{ba_artifacts}/documents/template-doc/short-doc/`. If missing, seed it from `../resources/template-doc/short-doc/`. If present, do not overwrite without user confirmation.

3. `step-03-source-extraction.md`
   Read the source `.docx` through Word OpenXML, extract text in source order, extract images from `word/media/`, and save images under `_shared-assets/<document-name>/images/` using sequential names.

4. `step-04-draft-generation.md`
   Generate `working-doc/<document-name>/draft.md` from the extracted content using the short document template. Attach images near the most relevant text or section.

5. `step-05-review-records.md`
   Create or update `open-questions.md`, `assumptions.md`, and `review-notes.md`. Record extraction counts, normalization decisions, uncertain image placement, assumptions, and unresolved questions.

6. `step-06-finalization.md`
   Create final Markdown and `changelog.md` under `final-doc/<document-name>/` only when the user requests finalization or review readiness is sufficient. Do not overwrite released final versions.

7. `step-07-word-export.md`
   Export `.docx` from final Markdown. Prefer `pandoc`, then LibreOffice `soffice`, then direct Word OpenXML generation if necessary. Verify embedded images and core package parts.

8. `step-08-package-confirmation.md`
   Ask before creating `_complete-package/`. Explicitly HALT and wait for a clear user confirmation.

9. `step-09-complete-package.md`
   Create `final-doc/<document-name>/_complete-package/v<version>/` and collect `source/`, `template/`, `working/`, `assets/images/`, `final/`, and `manifest.md`.

10. `step-10-package-verification-and-cleanup.md`
    Verify package completeness, update `{ba_artifacts}/ba-worklog-index.md`, then ask before cleanup. Only remove current-document working data after the package is complete and the user confirms.

## Mandatory Guardrails

- Do not edit source files in `incoming-doc/` directly.
- Do not drop extracted images without a documented reason.
- Do not move to final output while important sections or images are unresolved unless the user explicitly accepts the caveat.
- Do not create a separate `package-doc/` folder.
- Do not create `_complete-package/` without explicit user confirmation.
- Do not use `_complete-package/` as the primary working area; it is an archival snapshot.
- Do not cleanup `incoming-doc/`, `working-doc/<document-name>/`, or `_shared-assets/<document-name>/` before package verification.
- Do not cleanup without explicit user confirmation.
- Do not delete shared templates.
- Do not delete `final-doc/<document-name>/` during cleanup.

## Module Files To Update

Update existing files:

- `custom-modules/ba-assistant/module.yaml`
- `custom-modules/ba-assistant/module-help.csv`
- `custom-modules/ba-assistant/README.md`
- `custom-modules/ba-assistant/bmad-agent-ba-assistant/SKILL.md`

Add new files:

- `custom-modules/ba-assistant/bmad-ba-short-doc-production/SKILL.md`
- `custom-modules/ba-assistant/bmad-ba-short-doc-production/workflow.md`
- `custom-modules/ba-assistant/bmad-ba-short-doc-production/steps/*.md`
- `custom-modules/ba-assistant/bmad-ba-short-doc-production/resources/template-doc/**/*.md`

## Agent Routing Update

Add a BA Assistant menu route:

```text
BDS - Invoke bmad-ba-short-doc-production for short document production from a raw .docx source.
```

The agent should route to this workflow when the user asks to:

- create a short document from Word
- standardize a raw `.docx` document
- extract images from Word and rebuild a short document
- create draft, final Markdown, Word export, or a complete document package

## README Scope Update

Add `Scope v0.3.0`.

In scope:

- Short document production from raw `.docx`
- Template bootstrap from packaged `template-doc/short-doc` resources
- Draft generation with extracted images
- Review records for open questions, assumptions, and processing notes
- Final Markdown and Word export
- Complete package under `final-doc/<document-name>/_complete-package/v<version>/`
- Package verification
- User-confirmed cleanup of current-document working data

Out of scope:

- Generic arbitrary document conversion beyond the short document workflow
- Automatic OCR from screenshots
- Distribution of real binary sample documents
- Automatic cleanup without user confirmation
- Replacement of `bmad-ba-document-merge`

## Validation Plan

Run targeted validation after implementation:

```bash
node tools/validate-skills.js --json custom-modules/ba-assistant/bmad-ba-short-doc-production
```

Run all skill validation if the targeted check passes:

```bash
npm run validate:skills
```

Before any push, follow repository policy:

```bash
npm ci && npm run quality
```

## Implementation Notes

- Keep source module assets in English.
- Let generated runtime outputs follow configured user languages.
- Use relative file references inside the new skill to satisfy skill validation.
- Avoid cross-skill file references; invoke other skills by skill name only if needed.
- Keep the new workflow at 10 steps or fewer.

## Review Fixes To Apply During Implementation

These fixes are mandatory implementation details identified during workflow review.

### Package Confirmation Branch

Step 8 must be a real decision point, not a cosmetic confirmation.

- If the user confirms package creation, continue to Step 9.
- If the user declines package creation, do not run Step 9 or Step 10.
- If the user declines package creation, summarize the final Markdown and Word export locations, unresolved questions, and the fact that no `_complete-package/` was created.
- After a package decline summary, ask whether the user wants any further adjustments, review, export retry, version change, or other follow-up work, then HALT and follow the user's next instruction.
- If the user response is ambiguous, ask one clarification question and HALT again.

### Template Bootstrap Completeness

Step 2 must verify more than folder existence.

Required template resource files:

- `README.md`
- `00-document-template.md`
- `writing-rules.md`
- `review-checklist.md`
- `generation-workflow.md`
- `section-map.md`
- `section-file-list.md`

Runtime handling rules:

- If `{ba_artifacts}/documents/template-doc/short-doc/` is missing, seed all required files from `../resources/template-doc/short-doc/`.
- If the folder exists and all required files exist, do not overwrite by default.
- If the folder exists but required files are missing, ask before adding the missing files.
- If a packaged template version marker is available and the runtime copy is older, ask before updating or create a versioned backup before replacement.
- If the user declines template repair/update, continue only if the existing template has enough information to produce the requested output; otherwise stop with the missing files listed.

### Lifecycle Folder Bootstrap

Step 1 or Step 2 must create the document lifecycle folders when missing:

- `{ba_artifacts}/documents/incoming-doc/`
- `{ba_artifacts}/documents/template-doc/`
- `{ba_artifacts}/documents/working-doc/`
- `{ba_artifacts}/documents/final-doc/`
- `{ba_artifacts}/documents/_shared-assets/`
- `{ba_artifacts}/documents/_archive/`

Do not create document-specific working folders until the source document name is confirmed or derived.

### Complete Package Duplication Rules

The complete package is an archival snapshot under `final-doc/<document-name>/_complete-package/v<version>/`. It intentionally duplicates current runtime files so the document can be restored or edited later without relying on transient working folders.

Required package copy rules:

- Copy the raw `.docx` source from `{ba_artifacts}/documents/incoming-doc/` into `_complete-package/v<version>/source/`.
- Do not create `_complete-package/v<version>/incoming/`; `incoming-doc/` remains only the runtime input folder, not a package subfolder.
- Copy final Markdown, Word export, and changelog from `final-doc/<document-name>/` into `_complete-package/v<version>/final/`.
- Keep the original final files in `final-doc/<document-name>/`; the `final/` folder inside `_complete-package/` is a duplicate archival copy, not the working final location.
- Treat `source/`, `template/`, `working/`, `assets/images/`, `final/`, and `manifest.md` as mandatory package components.

### Word Export Fallback

Step 7 must define export behavior clearly.

Preferred export order:

1. Use `pandoc` when available.
2. Use LibreOffice `soffice` when available and suitable.
3. Use direct Word OpenXML generation only if the implementation includes a deterministic helper or explicit generation logic that creates at minimum `[Content_Types].xml`, `_rels/.rels`, `word/document.xml`, `word/_rels/document.xml.rels`, and embedded image parts under `word/media/`.

If no supported export path is available, do not claim Word export is complete. Produce final Markdown, record the blocked Word export in `review-notes.md` or the final summary, and ask whether the user wants to proceed without `.docx`.
