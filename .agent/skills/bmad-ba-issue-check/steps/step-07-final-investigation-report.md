# Step 7: Final Investigation Report

## Goal

Finalize an evidence-backed investigation report from the step records.

## Instructions

Build the final report from the intake, investigation plan, evidence register, SQL/data-flow review, root cause analysis, and solution options. Do not rely on conversation memory alone.

Use this report structure:

- Issue summary
- Business impact
- Scope, stakeholders, and environment
- Investigation approach and read-only guardrails
- Inputs reviewed
- Symptom timeline and affected records
- Evidence summary
- SQL procedure and data-flow summary where applicable
- Root cause classification and rationale
- Confirmed findings vs hypotheses
- Solution options and recommended path
- Developer or DBA handoff notes where needed
- Risks and dependencies
- Decisions
- Open questions
- Validation or follow-up plan
- Traceability summary

Set readiness status as one of:

- Resolved by BA action
- Needs business decision
- Needs data correction
- Needs configuration or process change
- Needs developer investigation
- Needs DBA investigation
- Needs integration owner investigation
- Blocked

## Step Documentation

Create or update `{ba_artifacts}/issue-check/<issue-slug>/final/step-07-final-investigation-report-notes.md` with:

- Workflow and step name
- Inputs reviewed, including all available prior step records
- Questions asked
- User responses and evidence
- Final report path: `{ba_artifacts}/issue-check/<issue-slug>/final/investigation-report.md`
- Readiness status
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Recommended next action

Update `{ba_artifacts}/ba-worklog-index.md` with workflow completion status, artifact paths, readiness status, carried-forward risks, open questions, and recommended next action.

## Completion

Report the final investigation report path, readiness status, unresolved risks, open questions, and recommended owner for the next action.
