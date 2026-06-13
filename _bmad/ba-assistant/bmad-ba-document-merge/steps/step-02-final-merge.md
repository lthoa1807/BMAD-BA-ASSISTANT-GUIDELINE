# Step 2: Final Merge

## Goal

Create the final merged Markdown document and optional export notes.

## Instructions

Use the confirmed section order from the readiness step. Create `merged.md` with:

- Final title and metadata
- Table of contents when useful
- Merged section content in approved order
- Assumptions, open questions, risks, or caveats that remain valid
- Source or evidence references when the sections include them
- Review status or approval note

Create optional export notes only if needed. Do not implement `.docx` export in this workflow.

## Step Documentation

Create or update `{ba_artifacts}/documents/<document-name>/merge/step-02-final-merge-notes.md` with:

- Workflow and step name
- Inputs reviewed, including merge readiness notes and section files
- Questions asked
- User responses and evidence
- Merged document path
- Export notes path if created
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Final status and recommended next action

Update `{ba_artifacts}/ba-worklog-index.md` with workflow completion status, artifact paths, carried-forward risks, open questions, final status, and recommended next action.

## Completion

Report the `merged.md` path and any remaining caveats.
