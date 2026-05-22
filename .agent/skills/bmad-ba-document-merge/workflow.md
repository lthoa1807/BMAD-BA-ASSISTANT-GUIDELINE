# BA Document Merge Workflow

## Purpose

Merge approved BA document section files into one final Markdown document.

## Steps

1. `./steps/step-01-merge-readiness.md` - Confirm section order, readiness, and unresolved caveats.
2. `./steps/step-02-final-merge.md` - Create the merged Markdown document and export notes.

## Guardrails

- Do not merge sections marked blocked unless the user explicitly accepts the caveat.
- Do not remove open questions or assumptions without explicit confirmation.
- Maintain step records under `{ba_artifacts}/documents/<document-name>/merge/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Use stable trace IDs for merge items, decisions, risks, and questions: `DOC-001`, `DEC-001`, `RISK-001`, and `Q-001`.
