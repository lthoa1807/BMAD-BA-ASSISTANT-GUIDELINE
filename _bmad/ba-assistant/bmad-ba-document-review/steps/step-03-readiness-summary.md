# Step 3: Readiness Summary

## Goal

Summarize document readiness and update supporting registers.

## Instructions

Use the review findings to classify document readiness:

- Ready for stakeholder review
- Ready with minor fixes
- Needs BA revision
- Needs SME decision
- Needs source evidence
- Blocked

Update `_open-questions.md` and `_assumptions.md` as needed. Create `_traceability-matrix.md` only when traceability was requested or is clearly required by the selected document type.

## Step Documentation

Create or update `{ba_artifacts}/documents/<document-name>/review/step-03-readiness-summary-notes.md` with:

- Workflow and step name
- Inputs reviewed, including review findings
- Questions asked
- User responses and evidence
- Readiness summary with `REV-###` IDs
- Updated supporting register paths
- Optional traceability matrix path
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Recommended next workflow

Update `{ba_artifacts}/ba-worklog-index.md` with workflow completion status, artifact paths, readiness status, carried-forward risks, open questions, and recommended next workflow.

## Completion

Report review findings path, readiness status, and whether `bmad-ba-document-merge` is appropriate next.
