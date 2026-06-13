# Step 6: Finalization

## Goal

Create final Markdown and `changelog.md` under `final-doc/<document-name>/` when the user requests finalization or review readiness is sufficient.

## Instructions

Before finalizing, review:

- `draft.md`
- `open-questions.md`
- `assumptions.md`
- `review-notes.md`
- Extracted image inventory
- User decisions and accepted caveats

Do not move to final output while important sections or images are unresolved unless the user explicitly accepts the caveat.

Create `{ba_artifacts}/documents/final-doc/<document-name>/<document-name>-v<version>.md` with:

- Clean final short document content.
- Stable image links to `_shared-assets/<document-name>/images/` or package-relative links when appropriate.
- Any approved caveats, warnings, or known limitations.
- No unresolved editorial notes unless the user asks to keep them.

Create or update `{ba_artifacts}/documents/final-doc/<document-name>/changelog.md` with:

- Version
- Date
- Source `.docx`
- Summary of changes from draft to final
- User confirmations and accepted caveats

Do not overwrite an existing released final version. If the target version already exists, ask whether to choose a new version or create a backup before replacement.

## Output Fragment

Create a finalization summary with final Markdown path, changelog path, included caveats, unresolved items, and readiness for Word export.

## Step Documentation

Create or update `{ba_artifacts}/documents/final-doc/<document-name>/step-06-finalization-notes.md` with:

- Workflow and step name
- Inputs reviewed
- Final files created or updated
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

Continue with `./step-07-word-export.md` if Word export is requested or expected.
