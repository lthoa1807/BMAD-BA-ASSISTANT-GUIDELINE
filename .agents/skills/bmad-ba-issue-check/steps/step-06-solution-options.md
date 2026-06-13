# Step 6: Solution Options

## Goal

Propose practical solution paths based on the evidence-backed cause analysis.

## Instructions

For each solution option, capture:

- Linked `CAUSE-###`, evidence references, and affected scope
- Business outcome, owner, dependencies, effort, risk, urgency, and validation needs
- Whether the option is a workaround, process correction, data cleanup, configuration change, report definition update, requirement clarification, integration review, developer ticket, DBA review, or preventive control
- Impact if not implemented
- Rollback or monitoring considerations where relevant

When the likely cause is SQL logic, produce a developer or DBA handoff with procedure names, parameters, branches, sample records, evidence IDs, and validation questions. Do not prescribe a final code fix unless a technical owner has confirmed it.

Include at least one non-code option when process, data, configuration, reporting, access, or training alternatives are plausible.

## Output Fragment

Create or update `solution/solution-options.md` with `SOL-###` options, recommendation, owners, risks, dependencies, and validation or handoff plan.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/issue-check/<issue-slug>/solution/step-06-solution-options-notes.md` with:

- Workflow and step name
- Inputs reviewed, including root cause analysis if available
- Questions asked
- User responses and evidence
- Solution options with `SOL-###` IDs
- Recommended path and rationale
- Developer or DBA handoff items where needed
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-07-final-investigation-report.md`.
