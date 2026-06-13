# Step 5: User Content Mapping

## Goal

Map the user's provided information into the template fields without inventing missing business content.

## Instructions

Review the user's source notes, pasted content, tables, or JSON input. Create `content-input.json` that matches the template's `fields` and repeating `source` collections.

For missing values:

- Use bracketed placeholders such as `[Chưa cung cấp]`.
- Record the missing field as an open question.
- Do not fabricate dates, names, responsibilities, commitments, or approval status.

For rough notes:

- Rewrite into formal business wording only when it preserves meaning.
- Keep responsibilities, deadlines, and unresolved customer actions explicit.

## Output Fragment

Create:

- `{ba_artifacts}/documents/docx-template-production/final/<document-name>/content-input.json`
- `{ba_artifacts}/documents/docx-template-production/final/<document-name>/content-mapping-notes.md`

## Step Documentation

Create or update `{ba_artifacts}/documents/docx-template-production/final/<document-name>/step-05-user-content-mapping.md` with:

- Workflow and step name
- Template path
- User inputs reviewed
- Field mapping summary
- Missing fields
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action

Update `{ba_artifacts}/ba-worklog-index.md` when available.

## Next

Continue with `./step-06-docx-generation.md`.
