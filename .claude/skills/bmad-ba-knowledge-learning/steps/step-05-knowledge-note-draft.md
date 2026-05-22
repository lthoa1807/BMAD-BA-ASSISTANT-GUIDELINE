# Step 5: Knowledge Note Draft

## Goal

Draft a structured, version-aware knowledge note that keeps facts, assumptions, and questions separate.

## Instructions

Use prior learning records as source inputs. If a record is missing, ask for the minimum missing context or recreate a concise record before drafting.

Draft the note with metadata and sections appropriate to the knowledge type. Recommended metadata fields:

```yaml
id: KNOW-001
type: functional-note
system: TBD
module: TBD
function: TBD
customer: TBD
tags: []
status: draft
confidence: low
source_refs: []
last_verified: TBD
applies_to_versions: []
environment: TBD
review_after: TBD
```

Recommended sections:

- Summary
- Applies to
- Business context
- Confirmed facts
- Process or functional behavior
- Version, environment, or customer-specific notes
- Assumptions
- Open questions
- Risks or caveats
- Source references
- Review status

## Output Fragment

Create the draft knowledge note and preserve `KNOW-###`, `DEC-###`, `RISK-###`, and `Q-###` trace IDs where relevant.

## Step Documentation

Before moving to the next step, create or update `{ba_artifacts}/knowledge/learning/step-05-knowledge-note-draft-notes.md` with:

- Workflow and step name
- Inputs reviewed, including prior learning records
- Questions asked
- User responses and evidence
- Draft knowledge note with `KNOW-###` IDs
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Draft artifact path if saved
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-06-evidence-review.md`.
