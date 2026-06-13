---
name: bmad-ba-document-writer
description: 'Writes one or more BA document sections from a document plan, template, and source inputs. Use when the user wants drafted Markdown section files for a planned BA document.'
---

# BA Document Writer

## Goal

Draft clear BA document sections while preserving assumptions, open questions, and evidence boundaries.

## Operating Rules

- Use the document plan and template when available.
- Write only the selected section or sections for the current run.
- Do not reuse knowledge notes unless the user explicitly requests reuse, citation, traceability, or conflict checking.
- Keep unsupported claims out of confirmed statements.

## Execution

Read `./workflow.md`, then execute only the current step. Load the next step only when the current step is complete.

## Output

Create numbered Markdown section files under `{ba_artifacts}/documents/<document-name>/`, update `_open-questions.md`, `_assumptions.md`, and `_evidence-register.md` when relevant, and update `{ba_artifacts}/ba-worklog-index.md`.
