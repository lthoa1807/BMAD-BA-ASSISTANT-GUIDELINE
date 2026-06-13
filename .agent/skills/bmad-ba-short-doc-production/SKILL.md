---
name: bmad-ba-short-doc-production
description: 'Produces standardized short documents from raw .docx sources with extraction, draft records, final Markdown, Word export, packaging, verification, and cleanup guardrails. Use when the user wants to create or rebuild a short Word-ready document.'
---

# BA Short Document Production

## Goal

Turn a raw `.docx` source into a standardized short document package with traceable working records, extracted images, final Markdown, Word export when available, complete package archival, verification, and user-confirmed cleanup.

## Operating Rules

- Treat the source `.docx` under `{ba_artifacts}/documents/incoming-doc/` as read-only.
- Seed or repair the reusable short document template only with user confirmation when runtime template files already exist.
- Keep extraction assumptions, image placement uncertainty, and unresolved questions visible in working records.
- Do not create `_complete-package/` until the user gives clear confirmation.
- Do not cleanup incoming, working, or shared asset files until package verification is complete and the user confirms cleanup.

## Execution

Read `./workflow.md`, then execute only the current step. Load the next step only when the current step is complete.

## Output

Create runtime artifacts under `{ba_artifacts}/documents/`, including source intake, template copy, working draft records, shared extracted images, final Markdown, optional `.docx` export, `_complete-package/v<version>/`, package manifest, verification notes, and `{ba_artifacts}/ba-worklog-index.md` updates.
