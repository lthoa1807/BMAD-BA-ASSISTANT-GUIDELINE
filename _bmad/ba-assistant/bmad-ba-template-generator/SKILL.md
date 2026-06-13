---
name: bmad-ba-template-generator
description: 'Generates a fit-for-purpose Markdown template and section plan for a BA document. Use when a document plan exists and the user wants a structured outline before writing sections.'
---

# BA Template Generator

## Goal

Create a practical Markdown template for a BA document based on the document plan, audience, scope, and evidence needs.

## Operating Rules

- Use the document plan as the main input when available.
- Do not write full document content in this workflow.
- Do not pull from knowledge notes unless the user explicitly requests reuse, citation, traceability, or conflict checking.
- Keep the template usable for large documents by defining separate section files.

## Execution

Read `./workflow.md`, then execute only the current step. Load the next step only when the current step is complete.

## Output

Create or update `00-document-template.md` and a section file list under `{ba_artifacts}/documents/<document-name>/`, then update `{ba_artifacts}/ba-worklog-index.md`.
