# Step 7: Knowledge Base Commit

## Goal

Save the reviewed knowledge note and update lightweight indexes or registries when appropriate.

## Instructions

Use the draft note and evidence review as source inputs. If a source record is missing, ask for the minimum missing context or save the note with a lower confidence and explicit open questions.

Finalize the note by:

- Applying evidence review changes
- Setting final status and confidence
- Preserving source references and trace IDs
- Saving the note under `{ba_artifacts}/knowledge/notes/` or a system-specific subfolder such as `{ba_artifacts}/knowledge/systems/<system-name>/notes/`
- Updating `{ba_artifacts}/knowledge/_knowledge-index.md` when useful
- Updating `{ba_artifacts}/knowledge/_system-registry.md` or a system version registry when useful

Do not create or update BA delivery documents unless the user explicitly requests document reuse, citation, traceability, or conflict checking.

## Step Documentation

Create or update `{ba_artifacts}/knowledge/learning/step-07-knowledge-base-commit-notes.md` with:

- Workflow and step name
- Inputs reviewed, including draft and evidence review records
- Questions asked
- User responses and evidence
- Final knowledge note path with `KNOW-###` IDs
- Index or registry updates
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Final status and confidence
- Recommended next workflow or action

Update `{ba_artifacts}/ba-worklog-index.md` with workflow completion status, artifact path, carried-forward risks, open questions, final status, confidence, and recommended next action.

## Completion

Report the saved knowledge note path and any unresolved questions to the user.
