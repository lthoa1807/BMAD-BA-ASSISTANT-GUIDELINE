# Step 4: Draft Generation

## Goal

Generate `working-doc/<document-name>/draft.md` from extracted source content using the runtime short document template.

## Instructions

Use `{ba_artifacts}/documents/template-doc/short-doc/` as the document structure and writing guidance.

Create `{ba_artifacts}/documents/working-doc/<document-name>/draft.md` with:

- Title, version, audience, and scope metadata.
- Short document sections from the template.
- Rewritten source content in the target document language when requested.
- Tables converted to Markdown where practical.
- Image references near the most relevant text or section.
- Notes for uncertain image placement or unclear source meaning.

Preserve evidence boundaries:

- Do not invent facts, steps, warnings, or process behavior not supported by the source or user instruction.
- Mark unsupported but useful content as an assumption or open question instead of a confirmed statement.
- Keep source-specific terminology consistent unless the user requests normalization.

## Output Fragment

Create a draft summary with generated sections, omitted or merged source content, image placement decisions, assumptions, and open questions.

## Step Documentation

Create or update `{ba_artifacts}/documents/working-doc/<document-name>/step-04-draft-generation-notes.md` with:

- Workflow and step name
- Template files used
- Source inputs reviewed
- Draft sections generated with `DOC-###` IDs where useful
- Image placement decisions
- Questions asked
- User responses and evidence
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-05-review-records.md`.
