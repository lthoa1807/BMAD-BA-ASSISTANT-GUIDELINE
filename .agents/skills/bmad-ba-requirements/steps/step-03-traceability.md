# Step 3: Traceability And Readiness

## Goal

Produce a traceability view and identify whether the requirements are ready for implementation planning.

## Instructions

Use the prior requirements step records as source inputs. If a step record is missing, ask for the minimum missing context or recreate a concise record before writing the requirements pack.

Create:

- Traceability matrix linking business objective, process scenario, fit-gap item, requirement ID, acceptance criteria, and test focus
- Readiness summary by process area
- Missing decisions
- High-risk requirements
- Items needing solution architect, data, integration, security, or testing review
- Recommended next actions

Mark requirements as ready, needs decision, needs discovery, or blocked.

Preserve `REQ-###`, upstream `DISC-###`, upstream `GAP-###`, `DEC-###`, `RISK-###`, and `Q-###` trace IDs in the traceability view where relevant.

## Step Documentation

Create or update `{ba_artifacts}/requirements/step-03-traceability-notes.md` with:

- Workflow and step name
- Inputs reviewed, including prior requirements step records
- Questions asked
- User responses and evidence
- Traceability findings with `REQ-###` IDs and upstream `DISC-###` and `GAP-###` links where available
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Final artifact path

Update `{ba_artifacts}/ba-worklog-index.md` with workflow completion status, artifact path, carried-forward risks, open questions, readiness status, and recommended next workflow.

## Completion

Save the requirements pack under `{ba_artifacts}/requirements/` and report the path to the user.
