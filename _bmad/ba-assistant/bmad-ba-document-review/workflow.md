# BA Document Review Workflow

## Purpose

Review BA document sections for unsupported claims, missing decisions, unclear assumptions, inconsistent terminology, and readiness for stakeholder review.

## Steps

1. `./steps/step-01-review-scope.md` - Confirm review scope, criteria, and source inputs.
2. `./steps/step-02-review-findings.md` - Produce review findings and recommended fixes.
3. `./steps/step-03-readiness-summary.md` - Summarize readiness and update supporting registers.

## Guardrails

- Findings come first; do not bury risks in a summary.
- Do not create traceability artifacts unless requested or clearly required by the document type.
- Maintain step records under `{ba_artifacts}/documents/<document-name>/review/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Use stable trace IDs for review findings, decisions, risks, and questions: `REV-001`, `DEC-001`, `RISK-001`, and `Q-001`.
