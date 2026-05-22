# Step 3: Template Commit

## Goal

Save the Markdown document template and section guidance for downstream writing.

## Instructions

Use the prior template records as source inputs. If a record is missing, ask for the minimum missing context or recreate a concise record before saving the template.

Create `00-document-template.md` with:

- Document title placeholder
- Purpose and audience notes
- Section outline
- Section-by-section writing guidance
- Required evidence or source inputs
- Assumptions and open questions to resolve while writing
- Review notes
- Suggested section filenames

Do not write full final content in this workflow.

## Step Documentation

Create or update `{ba_artifacts}/documents/<document-name>/template/step-03-template-commit-notes.md` with:

- Workflow and step name
- Inputs reviewed, including prior template records
- Questions asked
- User responses and evidence
- Template decisions with `DOC-###` IDs
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Final artifact path

Update `{ba_artifacts}/ba-worklog-index.md` with workflow completion status, artifact path, carried-forward risks, open questions, and recommended next workflow.

## Completion

Report the template path and recommend `bmad-ba-document-writer` next when the user wants section content drafted.
