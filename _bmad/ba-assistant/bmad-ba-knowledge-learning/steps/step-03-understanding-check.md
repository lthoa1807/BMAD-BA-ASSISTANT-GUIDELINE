# Step 3: Understanding Check

## Goal

Verify the BA's understanding and separate confirmed understanding from uncertain interpretation.

## Instructions

Ask concise check questions that test:

- What business problem or process the knowledge affects
- Which users, roles, customers, systems, modules, or versions are in scope
- Which rules or behaviors are confirmed by source material
- Which explanations are BA interpretation or need SME confirmation
- Which edge cases, exceptions, or dependencies are still unclear

If the user corrects the explanation, update the learning notes and record the correction as a decision or revised interpretation.

## Output Fragment

Create an understanding summary with confirmed points, corrected points, uncertain interpretations, and remaining questions.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/knowledge/learning/step-03-understanding-check-notes.md` with:

- Workflow and step name
- Inputs reviewed, including prior learning records
- Questions asked
- User responses and evidence
- Confirmed understanding with `KNOW-###` IDs where useful
- Corrected or rejected interpretations
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-04-gap-and-questions.md`.
