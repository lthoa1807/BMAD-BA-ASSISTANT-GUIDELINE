---
name: bmad-ba-document-concept
description: 'Clarifies the goal, audience, scope, source inputs, constraints, and structure for a BA document before drafting begins. Use when the user wants to create a proposal, survey, guideline, UAT pack, handover, or other BA document.'
---

# BA Document Concept

## Goal

Create a clear document plan before any BA document is drafted.

## Operating Rules

- Treat document creation as independent from knowledge learning unless the user explicitly requests reuse, citation, traceability, or conflict checking.
- Separate confirmed source inputs, assumptions, open questions, and decisions.
- Define audience and usage before choosing sections or writing content.
- Prefer Markdown as the canonical authoring format.

## Execution

Read `./workflow.md`, then execute only the current step. Load the next step only when the current step is complete.

## Output

Create document planning records under `{ba_artifacts}/documents/<document-name>/`, update `{ba_artifacts}/ba-worklog-index.md`, and save `00-document-plan.md`, `_open-questions.md`, `_assumptions.md`, and optional `_evidence-register.md`.
