# Step 3: Evidence Collection

## Goal

Collect and normalize evidence without turning observations into conclusions too early.

## Instructions

Capture evidence from available sources:

- User examples, screenshots, report extracts, spreadsheet samples, forms, and emails
- Query outputs, metadata snapshots, procedure text excerpts, logs, audit records, job history, and integration messages
- Configuration references, report definitions, business rules, process documents, and knowledge notes
- SME, business owner, developer, DBA, integration owner, or report owner confirmations

For each evidence item, record source, date or timestamp, environment, owner, reliability, related issue IDs, and whether sensitive data was masked.

Do not treat query output as conclusive unless the filters, timing, environment, and sample record scope are clear.

## Output Fragment

Create or update `evidence/evidence-register.md` with evidence records, related issue IDs, reliability, interpretation boundary, and follow-up questions.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/issue-check/<issue-slug>/evidence/step-03-evidence-collection-notes.md` with:

- Workflow and step name
- Inputs reviewed, including investigation plan if available
- Questions asked
- User responses and evidence
- Evidence records with `EVD-###` IDs
- Data observations with `DATA-###` IDs where useful
- Source references, timestamps, owners, and environments
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-04-sql-procedure-data-flow-deep-dive.md`.
