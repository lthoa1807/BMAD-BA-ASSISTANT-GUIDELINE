# Step 3: Fit Gap Matrix

## Goal

Produce an implementation-ready fit-gap matrix.

## Instructions

Use the prior fit-gap step records as source inputs. If a step record is missing, ask for the minimum missing context or recreate a concise record before writing the matrix.

Create a matrix with these columns:

- ID
- Process area
- Scenario
- Business need
- Current state
- Standard fit
- Classification
- Recommendation
- Business impact
- Complexity
- Risk
- Decision owner
- Status
- Notes and evidence

Add a summary by classification and list top risks, quick wins, and decisions needed before requirements are finalized.

Preserve `GAP-###`, upstream `DISC-###`, `DEC-###`, `RISK-###`, and `Q-###` trace IDs in the matrix where relevant.

## Step Documentation

Create or update `{ba_artifacts}/fit-gap/step-03-matrix-notes.md` with:

- Workflow and step name
- Inputs reviewed, including prior fit-gap step records
- Questions asked
- User responses and evidence
- Matrix findings with `GAP-###` IDs and upstream `DISC-###` links where available
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Final artifact path

Update `{ba_artifacts}/ba-worklog-index.md` with workflow completion status, artifact path, carried-forward risks, open questions, and recommended next workflow.

## Completion

Save the matrix under `{ba_artifacts}/fit-gap/` and report the path to the user.
