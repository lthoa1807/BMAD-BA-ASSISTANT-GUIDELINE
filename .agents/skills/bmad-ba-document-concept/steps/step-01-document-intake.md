# Step 1: Document Intake

## Goal

Capture the document type, purpose, audience, expected use, and source inputs.

## Instructions

Ask for or infer:

- Document type, such as proposal, survey, end-user guideline, UAT test cases, handover, or other BA-defined document
- Document name or working title
- Primary audience and secondary readers
- Business purpose and decision or activity the document must support
- Source inputs, including user notes, discovery findings, fit-gap records, requirements, knowledge notes, screenshots, process notes, or SME explanations
- Target format, language, review owner, and deadline if known

If the user mentions knowledge notes, ask whether they want reuse, citation, traceability, or conflict checking. Do not assume linkage.

## Output Fragment

Create a document intake summary with document type, audience, purpose, source inventory, and initial open questions.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/documents/<document-name>/planning/step-01-document-intake-notes.md` with:

- Workflow and step name
- Inputs reviewed
- Questions asked
- User responses and evidence
- Document goal and audience with `DOC-###` IDs where useful
- Source inventory
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-02-scope-and-evidence.md`.
