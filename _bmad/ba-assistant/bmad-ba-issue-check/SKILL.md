---
name: bmad-ba-issue-check
description: 'Investigates business, process, reporting, data, or SQL data-flow issues with traceable evidence, root cause analysis, solution options, and a final investigation report. Use when the user asks to check an issue, investigate a data mismatch, analyze root cause, or review SQL procedure data flow for an observed problem.'
---

# BA Issue Check

## Goal

Investigate an observed business, process, reporting, or data issue from intake through evidence-backed root cause analysis, solution options, and a final investigation report.

## Operating Rules

- Separate symptoms, causes, evidence, decisions, risks, assumptions, and open questions.
- Preserve source references, timestamps, sample records, report filters, procedure names, and environment context when available.
- Treat SQL stored procedures as evidence sources for data-flow analysis, not as a mandate to design or apply code fixes.
- Keep SQL investigation read-only unless the user explicitly confirms a safe sandbox and approved action.
- Mark unconfirmed causes as hypotheses until evidence or owner confirmation supports them.
- Escalate developer or DBA handoff items when the likely cause is stored procedure logic, runtime behavior, performance, locking, indexing, or deployment.

## Execution

Follow `workflow.md` and complete each step record under `{ba_artifacts}/issue-check/<issue-slug>/`. Update `{ba_artifacts}/ba-worklog-index.md` after each completed step.

Use stable IDs where useful: `ISSUE-001`, `EVD-001`, `SQL-001`, `DATA-001`, `FLOW-001`, `CAUSE-001`, `SOL-001`, `DEC-001`, `RISK-001`, and `Q-001`.

## Output

Produce an evidence-backed investigation report at `{ba_artifacts}/issue-check/<issue-slug>/final/investigation-report.md`, plus supporting records for intake, investigation plan, evidence, SQL/data-flow review, root cause analysis, and solution options.
