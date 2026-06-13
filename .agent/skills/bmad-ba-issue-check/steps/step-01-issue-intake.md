# Step 1: Issue Intake

## Goal

Establish the issue boundary, business impact, affected scope, and minimum examples needed for investigation.

## Instructions

Ask for or infer:

- Issue statement in expected vs actual terms
- Affected process, report, screen, integration, data object, system, environment, and business owner
- Impact, urgency, frequency, first observed date, and affected users or entities
- Sample records such as transaction IDs, document numbers, customer or vendor IDs, batch IDs, report filters, and timestamps
- Known recent changes in configuration, deployment, master data, integration, scheduler, or process
- Available sources such as screenshots, reports, extracts, logs, procedure names, job names, queries, or user confirmations
- Sensitivity constraints for storing production data in BA artifacts

If examples are missing, ask for the minimum reproducible sample and record the gap as an open question.

## Output Fragment

Create an issue intake summary with issue observations, business impact, affected scope, known examples, initial assumptions, risks, and open questions.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/issue-check/<issue-slug>/intake/step-01-issue-intake-notes.md` with:

- Workflow and step name
- Inputs reviewed
- Questions asked
- User responses and evidence
- Issue observations with `ISSUE-###` IDs
- Known examples and sample record references
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-02-investigation-plan.md`.
