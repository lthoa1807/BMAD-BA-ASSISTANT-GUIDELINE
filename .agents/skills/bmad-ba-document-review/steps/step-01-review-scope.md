# Step 1: Review Scope

## Goal

Confirm what to review, which criteria to apply, and what source inputs are available.

## Instructions

Ask for or infer:

- Document folder and section files to review
- Review purpose, such as evidence review, stakeholder readiness, consistency, acceptance criteria, UAT readiness, handover readiness, or executive clarity
- Source inputs, including plan, template, evidence register, assumptions, open questions, requirements, or knowledge notes
- Whether traceability is requested or required
- Whether conflict checking against knowledge notes is explicitly requested
- Severity scale or review categories if the user has a preference

If review scope is broad, prioritize high-risk sections first.

## Output Fragment

Create a review scope summary with review criteria, inputs, traceability decision, and risk focus.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/documents/<document-name>/review/step-01-review-scope-notes.md` with:

- Workflow and step name
- Inputs reviewed
- Questions asked
- User responses and evidence
- Review scope with `REV-###` IDs where useful
- Traceability or conflict-checking decision
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-02-review-findings.md`.
