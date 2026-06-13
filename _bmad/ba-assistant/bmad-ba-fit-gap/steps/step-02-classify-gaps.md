# Step 2: Classify Gaps

## Goal

Classify each business need against standard fit and identify the right response path.

## Instructions

For each scenario, assign one primary classification:

- Standard fit
- Configuration
- Process change
- Data cleanup or migration
- Integration
- Reporting or analytics
- Security or control design
- Extension
- Customization
- Unresolved decision

For any extension or customization, require:

- Business reason
- Standard alternative considered
- Process change alternative considered
- Impact if not implemented
- Complexity and maintenance risk
- Decision owner

## Output Fragment

Create classified gap entries with rationale, impact, owner, and recommended next action.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/fit-gap/step-02-gap-classification-notes.md` with:

- Workflow and step name
- Inputs reviewed, including `step-01-baseline-notes.md` if available
- Questions asked
- User responses and evidence
- Classified gap entries with `GAP-###` IDs and upstream `DISC-###` links where available
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-03-matrix.md`.
