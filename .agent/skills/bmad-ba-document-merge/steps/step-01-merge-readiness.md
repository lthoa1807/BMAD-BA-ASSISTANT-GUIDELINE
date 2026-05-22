# Step 1: Merge Readiness

## Goal

Confirm which section files should be merged, their order, and any unresolved caveats.

## Instructions

Review the document folder and confirm:

- Section files to include
- Section order
- Review status for each section
- Whether assumptions, open questions, or review caveats remain in the final document
- Final title, version, date, author or owner, and audience if known
- Whether export notes are needed for future `.docx` conversion

If review findings exist, summarize unresolved high-risk findings before merging.

## Output Fragment

Create a merge readiness summary with included files, excluded files, section order, caveats, and final metadata.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/documents/<document-name>/merge/step-01-merge-readiness-notes.md` with:

- Workflow and step name
- Inputs reviewed
- Questions asked
- User responses and evidence
- Section readiness with `DOC-###` IDs where useful
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-02-final-merge.md`.
