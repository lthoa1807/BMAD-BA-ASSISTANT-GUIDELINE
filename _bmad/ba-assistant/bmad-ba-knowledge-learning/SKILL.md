---
name: bmad-ba-knowledge-learning
description: 'Guides a business analyst through learning source material and producing a reviewed, version-aware knowledge note. Use when the BA needs to understand system, process, functional, customer, or version-specific knowledge before saving it.'
---

# BA Knowledge Learning

## Goal

Help a BA understand source material, separate confirmed facts from interpretation, and save a reviewed knowledge note that can be reused later without forcing it into a delivery document.

## Operating Rules

- Treat knowledge learning and document creation as independent workflows by default.
- Do not link a knowledge note to a BA document unless the user explicitly asks for reuse, citation, traceability, or conflict checking.
- Separate source-backed facts, BA observations, assumptions, open questions, and SME-confirmed decisions.
- Use version-aware metadata for system, module, function, customer, environment, and applicable product versions when known.
- Keep learning records traceable with stable IDs such as `KNOW-001`, `DEC-001`, `RISK-001`, and `Q-001`.

## Execution

Read `./workflow.md`, then execute only the current step. Load the next step only when the current step is complete.

## Output

Create traceable learning records under `{ba_artifacts}/knowledge/learning/`, update `{ba_artifacts}/ba-worklog-index.md`, and save reviewed knowledge notes under `{ba_artifacts}/knowledge/notes/` or a system-specific subfolder when appropriate.
