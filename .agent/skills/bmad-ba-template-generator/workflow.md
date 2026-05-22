# BA Template Generator Workflow

## Purpose

Generate a document outline and section-level writing guidance before section drafting begins.

## Steps

1. `./steps/step-01-template-inputs.md` - Confirm document plan, audience, scope, and section needs.
2. `./steps/step-02-outline-and-sections.md` - Design the template structure and section file list.
3. `./steps/step-03-template-commit.md` - Save the template and update planning records.

## Guardrails

- Do not draft full content beyond section prompts, placeholders, and guidance.
- Keep assumptions and open questions visible in the template where they affect writing.
- Maintain step records under `{ba_artifacts}/documents/<document-name>/template/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Use stable trace IDs for document template items, decisions, risks, and questions: `DOC-001`, `DEC-001`, `RISK-001`, and `Q-001`.
