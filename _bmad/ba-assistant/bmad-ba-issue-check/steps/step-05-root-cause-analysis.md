# Step 5: Root Cause Analysis

## Goal

Determine the likely or confirmed root cause by linking expected vs actual behavior to evidence.

## Instructions

Use the evidence register and SQL/data-flow review to:

- Compare expected vs actual process, data, report, integration, or system behavior
- Separate symptoms from causes and causes from solution options
- Confirm or reject investigation hypotheses
- Link every finding to `EVD-###`, `SQL-###`, `DATA-###`, `FLOW-###`, or owner confirmation where available
- Record ruled-out causes and why they were ruled out
- Assign confidence as confirmed, likely, hypothesis, or unresolved

Classify root cause using business-facing categories:

- Process issue
- Master data issue
- Transaction data issue
- Configuration or rule issue
- SQL logic issue
- Integration issue
- Reporting or semantic issue
- Access or security issue
- User training or adoption issue
- Policy or control gap
- Unknown or needs technical validation

## Output Fragment

Create or update `root-cause/root-cause-analysis.md` with cause classification, rationale, confidence, supporting evidence, ruled-out alternatives, impact, and unresolved questions.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/issue-check/<issue-slug>/root-cause/step-05-root-cause-analysis-notes.md` with:

- Workflow and step name
- Inputs reviewed, including evidence and SQL analysis records if available
- Questions asked
- User responses and evidence
- Root cause findings with `CAUSE-###` IDs
- Supporting evidence links
- Ruled-out causes
- Confidence and validation status
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-06-solution-options.md`.
