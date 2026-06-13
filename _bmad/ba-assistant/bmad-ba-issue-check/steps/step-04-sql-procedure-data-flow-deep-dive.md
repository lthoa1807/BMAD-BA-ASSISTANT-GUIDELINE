# Step 4: SQL Procedure Data Flow Deep Dive

## Goal

Analyze SQL stored procedures and related data flow as read-only evidence for the issue investigation.

## Instructions

When SQL is relevant, review the available procedure or data-flow sources for:

- Procedure name, schema, environment, purpose, parameters, defaults, and caller context
- Tables, views, functions, nested procedures, jobs, reports, integrations, and output consumers
- Joins, filters, status checks, date boundaries, null handling, aggregation, rounding, currency or unit conversion, and branching logic
- Temporary tables, staging tables, snapshots, derived fields, mapping tables, and exception paths
- Upstream producers and downstream consumers for affected records
- Where business meaning changes, such as derived status, allocation rule, default value, exclusion condition, or report grouping

Use safe SQL review guardrails:

- Prefer metadata inspection, procedure text review, dependency tracing, and approved `SELECT` queries.
- Do not run `INSERT`, `UPDATE`, `DELETE`, `MERGE`, `TRUNCATE`, DDL, job reruns, data fixes, or procedure executions with side effects.
- Do not execute stored procedures unless confirmed read-only or approved in a safe sandbox.
- Treat dynamic SQL, runtime side effects, locks, timeouts, indexing, and execution plans as developer or DBA validation items unless confirmed by a technical owner.

## Output Fragment

Create or update `sql-analysis/sql-procedure-review.md` and `sql-analysis/data-flow-map.md` with SQL evidence, dependency summary, data lineage, linked sample records, and validation gaps.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/issue-check/<issue-slug>/sql-analysis/step-04-sql-procedure-data-flow-deep-dive-notes.md` with:

- Workflow and step name
- Inputs reviewed, including evidence register if available
- Questions asked
- User responses and evidence
- SQL evidence with `SQL-###` IDs
- Data-flow findings with `FLOW-###` IDs
- Data observations with `DATA-###` IDs where useful
- Procedure dependencies and affected branches
- Read-only guardrails applied
- Developer or DBA validation items
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-05-root-cause-analysis.md`.
