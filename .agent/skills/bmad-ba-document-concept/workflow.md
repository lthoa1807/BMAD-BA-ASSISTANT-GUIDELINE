# BA Document Concept Workflow

## Purpose

Clarify document intent, audience, scope, evidence, constraints, and expected output before template generation or section writing begins.

## Steps

1. `./steps/step-01-document-intake.md` - Capture document type, purpose, audience, and source inputs.
2. `./steps/step-02-scope-and-evidence.md` - Define scope, constraints, assumptions, open questions, and evidence needs.
3. `./steps/step-03-document-plan.md` - Produce the document plan and supporting planning registers.

## Guardrails

- Do not draft document sections in this workflow.
- Do not assume knowledge notes should be reused unless the user explicitly requests it.
- Record unsupported claims as assumptions or open questions.
- Maintain step records under `{ba_artifacts}/documents/<document-name>/planning/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Use stable trace IDs for document items, decisions, risks, and questions: `DOC-001`, `DEC-001`, `RISK-001`, and `Q-001`.
