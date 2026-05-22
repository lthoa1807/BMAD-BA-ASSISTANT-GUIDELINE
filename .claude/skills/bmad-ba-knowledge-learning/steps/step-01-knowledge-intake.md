# Step 1: Knowledge Intake

## Goal

Capture the learning goal, source material, system context, version context, and expected knowledge note type.

## Instructions

Ask for or infer the following:

- Source material to learn from, such as documents, screenshots, release notes, configuration notes, tickets, process notes, demos, or user explanations
- Learning goal and business reason for learning it now
- System, module, function, process, customer, environment, and product version context if known
- Intended knowledge type, such as short tip, functional note, customer-specific note, system note, module note, or function note
- Known source owner, SME, decision owner, or review owner
- Any immediate constraints, risks, or areas that must not be assumed

If source material is unavailable, ask for the minimum source context needed to proceed and record missing evidence as open questions.

## Output Fragment

Create an intake summary with learning goal, source inventory, context metadata, initial evidence, assumptions, and open questions.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/knowledge/learning/step-01-knowledge-intake-notes.md` with:

- Workflow and step name
- Inputs reviewed
- Questions asked
- User responses and evidence
- Learning goal and knowledge scope with `KNOW-###` IDs where useful
- System, module, function, customer, environment, and version context
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-02-explain-and-teach.md`.
