# Step 5: Review Records

## Goal

Create or update the working review records that explain questions, assumptions, extraction decisions, and readiness concerns.

## Instructions

Create or update these files under `{ba_artifacts}/documents/working-doc/<document-name>/`:

- `open-questions.md`
- `assumptions.md`
- `review-notes.md`

Capture:

- Unresolved source ambiguity.
- Missing product, process, audience, or ownership details.
- Image placement uncertainty.
- Content excluded from the draft and why.
- Normalization decisions for terminology, structure, formatting, and language.
- Readiness concerns that block finalization.
- User-accepted caveats if the user wants to proceed despite unresolved items.

Use stable IDs for traceability: `DOC-###`, `DEC-###`, `RISK-###`, and `Q-###`.

## Output Fragment

Create a review record summary with readiness status, blocking questions, accepted assumptions, risks, and recommended next action.

## Step Documentation

Create or update `{ba_artifacts}/documents/working-doc/<document-name>/step-05-review-records-notes.md` with:

- Workflow and step name
- Review files created or updated
- Questions asked
- User responses and evidence
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-06-finalization.md` only when the user requests finalization or the draft is ready enough to finalize with clearly recorded caveats.
