---
name: bmad-ba-document-review
description: 'Reviews BA document sections for unsupported claims, unclear assumptions, missing decisions, inconsistent terminology, and stakeholder readiness. Use when drafted BA document sections need quality, evidence, or readiness review.'
---

# BA Document Review

## Goal

Review drafted BA document sections and produce actionable findings before stakeholder review or merge.

## Operating Rules

- Focus on evidence, clarity, assumptions, decisions, consistency, and readiness.
- Do not rewrite the whole document unless the user asks for revisions after findings.
- Create traceability only when the user requests traceability or the document type clearly requires it.
- Check against knowledge notes only when the user explicitly requests conflict checking or reuse validation.

## Execution

Read `./workflow.md`, then execute only the current step. Load the next step only when the current step is complete.

## Output

Create `_review-findings.md`, update `_open-questions.md` and `_assumptions.md`, optionally create `_traceability-matrix.md` only when requested or required, and update `{ba_artifacts}/ba-worklog-index.md`.
