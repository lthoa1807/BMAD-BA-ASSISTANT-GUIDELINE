# Step 8: Package Confirmation

## Goal

Get explicit user confirmation before creating `_complete-package/`.

## Instructions

Summarize what will be packaged:

- Raw `.docx` source from `incoming-doc/`
- Runtime template files from `template-doc/short-doc/`
- Working draft and review records from `working-doc/<document-name>/`
- Extracted images from `_shared-assets/<document-name>/images/`
- Final Markdown, optional Word export, and changelog from `final-doc/<document-name>/`
- `manifest.md`

Ask a direct confirmation question before creating `{ba_artifacts}/documents/final-doc/<document-name>/_complete-package/v<version>/`.

Decision handling:

- If the user confirms package creation, continue to Step 9.
- If the user declines package creation, do not run Step 9 or Step 10.
- If the user declines package creation, summarize the final Markdown and Word export locations, unresolved questions, and the fact that no `_complete-package/` was created.
- After a package decline summary, ask whether the user wants any further adjustments, review, export retry, version change, or other follow-up work, then halt and follow the user's next instruction.
- If the user response is ambiguous, ask one clarification question and halt again.

Do not treat this as a cosmetic confirmation. This is a real stop point.

## Output Fragment

Create a package confirmation summary with requested package version, package contents, user response, and branch decision.

## Step Documentation

Create or update `{ba_artifacts}/documents/final-doc/<document-name>/step-08-package-confirmation-notes.md` with:

- Workflow and step name
- Package contents proposed
- Questions asked
- User responses and evidence
- Decision branch with `DEC-###` ID
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Next action or halt reason

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and next action.

## Next

Continue with `./step-09-complete-package.md` only after clear user confirmation.
