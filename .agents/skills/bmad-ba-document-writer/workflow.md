# BA Document Writer Workflow

## Purpose

Draft one or more BA document sections using the document plan, template, user-provided source material, and optional confirmed knowledge only when explicitly requested.

## Steps

1. `./steps/step-01-section-selection.md` - Select sections and confirm source inputs.
2. `./steps/step-02-section-drafting.md` - Draft the selected section files.
3. `./steps/step-03-section-readiness.md` - Check readiness and update supporting registers.

## Guardrails

- Do not write sections that lack enough source context unless clearly marked as draft with assumptions.
- Preserve placeholders for unresolved facts instead of inventing details.
- Maintain step records under `{ba_artifacts}/documents/<document-name>/writing/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Use stable trace IDs for document content, decisions, risks, and questions: `DOC-001`, `DEC-001`, `RISK-001`, and `Q-001`.
