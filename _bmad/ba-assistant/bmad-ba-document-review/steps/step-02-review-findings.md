# Step 2: Review Findings

## Goal

Produce actionable findings for the selected document sections.

## Instructions

Review the selected sections for:

- Unsupported or weakly supported claims
- Missing assumptions, decisions, risks, or open questions
- Inconsistent terms, roles, process names, systems, or version references
- Scope creep or content outside the document purpose
- Missing acceptance criteria, test focus, handover details, or action owner when relevant
- Audience mismatch, unclear wording, or unusable section structure
- Conflicts with explicitly provided knowledge notes when conflict checking was requested

Order findings by severity and include file or section references.

## Output Fragment

Create `_review-findings.md` with findings, severity, affected section, evidence basis, recommendation, owner, and status.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/documents/<document-name>/review/step-02-review-findings-notes.md` with:

- Workflow and step name
- Inputs reviewed, including `step-01-review-scope-notes.md` if available
- Questions asked
- User responses and evidence
- Review findings with `REV-###` IDs
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-03-readiness-summary.md`.
