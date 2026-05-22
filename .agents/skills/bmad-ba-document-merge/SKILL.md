---
name: bmad-ba-document-merge
description: 'Merges approved BA document section files into a final Markdown document with export notes. Use when section files are reviewed or accepted and the user wants one final merged BA document.'
---

# BA Document Merge

## Goal

Merge approved section files into a clean final Markdown document.

## Operating Rules

- Merge from approved or explicitly selected section files only.
- Preserve assumptions, open questions, and review caveats unless the user confirms they should be removed.
- Treat `.docx` export as optional future work; provide export notes only.
- Do not silently rewrite section content during merge.

## Execution

Read `./workflow.md`, then execute only the current step. Load the next step only when the current step is complete.

## Output

Create `merged.md` and optional export notes under `{ba_artifacts}/documents/<document-name>/`, then update `{ba_artifacts}/ba-worklog-index.md`.
