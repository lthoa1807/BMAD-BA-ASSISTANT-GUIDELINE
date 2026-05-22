# Step 2: Explain And Teach

## Goal

Turn the source material into a BA-friendly explanation without losing evidence boundaries.

## Instructions

Use the intake record and source material to explain:

- Business purpose and user or operational problem being addressed
- Core concepts, terms, entities, roles, statuses, rules, and exceptions
- Process flow, handoffs, triggers, inputs, outputs, and downstream effects
- System behavior, configuration behavior, or functional behavior described by the source
- Version-specific differences or environment-specific behavior when known
- What is clearly source-backed versus what is interpretation

Do not create final knowledge yet. This step is for learning and clarification.

## Output Fragment

Create teaching notes with plain-language explanation, terminology, process or behavior summary, evidence references, and interpretation boundaries.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/knowledge/learning/step-02-explain-and-teach-notes.md` with:

- Workflow and step name
- Inputs reviewed, including `step-01-knowledge-intake-notes.md` if available
- Questions asked
- User responses and evidence
- Teaching notes with `KNOW-###` IDs where useful
- Source-backed facts
- Draft interpretations
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-03-understanding-check.md`.
