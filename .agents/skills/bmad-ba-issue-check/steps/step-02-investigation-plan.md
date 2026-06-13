# Step 2: Investigation Plan

## Goal

Define how the issue will be investigated before drawing conclusions.

## Instructions

Use the intake record to define:

- Investigation scope and out-of-scope areas
- Working hypotheses, clearly marked as unconfirmed
- Source systems, reports, tables, views, stored procedures, jobs, integrations, logs, and owners to review
- SQL review boundary, including environment, read-only access, approved query scope, and unsafe actions to avoid
- Evidence needed to confirm or reject each hypothesis
- Validation approach for affected records and expected behavior
- Required confirmations from business owner, SME, developer, DBA, integration owner, or report owner

If SQL stored procedures may be involved, prefer procedure text review, metadata inspection, dependency tracing, and approved `SELECT` checks before any execution request.

## Output Fragment

Create an investigation plan with hypotheses, evidence needs, source list, owners, SQL guardrails, validation method, and open questions.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/issue-check/<issue-slug>/investigation/step-02-investigation-plan-notes.md` with:

- Workflow and step name
- Inputs reviewed, including `step-01-issue-intake-notes.md` if available
- Questions asked
- User responses and evidence
- Investigation scope and exclusions
- Hypotheses with related `ISSUE-###` IDs
- SQL review boundary and access constraints
- Evidence needs and owners
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-03-evidence-collection.md`.
