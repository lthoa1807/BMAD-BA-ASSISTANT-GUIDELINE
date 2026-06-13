# Step 6: Evidence Review

## Goal

Check the draft knowledge note for unsupported claims and classify evidence before the note is committed.

## Instructions

Review each important claim and classify it as one of:

- Source-backed
- Decision-backed
- BA-confirmed
- SME-confirmed
- Assumption
- Open question
- Draft BA observation
- Draft interpretation

Move unsupported claims out of confirmed fact sections. If a claim matters but lacks evidence, record it as an assumption or open question and lower confidence as needed.

Set or revise status and confidence. Recommended statuses:

- `learning`
- `draft`
- `reviewed`
- `confirmed`
- `outdated`
- `needs-sme-review`

## Output Fragment

Create an evidence review summary with claim classifications, confidence, status, unresolved questions, and recommended changes to the draft note.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/knowledge/learning/step-06-evidence-review-notes.md` with:

- Workflow and step name
- Inputs reviewed, including the draft knowledge note
- Questions asked
- User responses and evidence
- Claim classifications with `KNOW-###` IDs where useful
- Status and confidence recommendation
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-07-knowledge-base-commit.md`.
