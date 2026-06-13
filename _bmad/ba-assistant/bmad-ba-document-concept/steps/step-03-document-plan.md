# Step 3: Document Plan

## Goal

Produce a document plan and supporting planning registers that downstream document workflows can use.

## Instructions

Use the prior step records as source inputs. If a step record is missing, ask for the minimum missing context or recreate a concise record before writing the plan.

Create `00-document-plan.md` with:

- Document title and type
- Purpose and intended use
- Audience
- Scope and exclusions
- Source inputs and evidence approach
- Proposed section list
- Review and approval approach
- Assumptions
- Open questions
- Risks and constraints
- Recommended next workflow

Also create or update `_open-questions.md`, `_assumptions.md`, and `_evidence-register.md` when evidence tracking is useful.

## Step Documentation

Create or update `{ba_artifacts}/documents/<document-name>/planning/step-03-document-plan-notes.md` with:

- Workflow and step name
- Inputs reviewed, including prior planning records
- Questions asked
- User responses and evidence
- Document planning findings with `DOC-###` IDs
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Final artifact paths

Update `{ba_artifacts}/ba-worklog-index.md` with workflow completion status, artifact paths, carried-forward risks, open questions, and recommended next workflow.

## Completion

Report the document plan path and recommend `bmad-ba-template-generator` next when the user wants a reusable section structure.
