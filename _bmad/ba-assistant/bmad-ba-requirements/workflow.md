# BA Requirements Workflow

## Purpose

Produce clear requirements with acceptance criteria and traceability to process needs and fit-gap decisions.

## Steps

1. `./steps/step-01-structure.md` - Choose the requirement structure and source inputs.
2. `./steps/step-02-write-requirements.md` - Draft functional and non-functional requirements.
3. `./steps/step-03-traceability.md` - Produce traceability and readiness summary.

## Guardrails

- Requirements must be testable.
- Keep business requirements separate from solution design unless a fit-gap decision already exists.
- Mark assumptions and unresolved decisions explicitly.
- Maintain step records under `{ba_artifacts}/requirements/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Use stable trace IDs for requirements, decisions, risks, and open questions: `REQ-001`, `DEC-001`, `RISK-001`, and `Q-001`.
- Preserve upstream `DISC-###` and `GAP-###` links where requirements derive from discovery or fit-gap work.
