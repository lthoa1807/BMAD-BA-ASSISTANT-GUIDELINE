# Step 10: Package Verification And Cleanup

## Goal

Verify complete package readiness, update the BA worklog, and ask before any cleanup.

## Instructions

Verify the package contains mandatory components:

- `source/` with the raw `.docx` source.
- `template/` with required short document template files.
- `working/` with draft and review records.
- `assets/images/` with extracted images or documented reason for no images.
- `final/` with final Markdown, Word export when produced, and changelog.
- `manifest.md` with package inventory and known omissions.

Update `manifest.md` with verification results:

- Complete components
- Missing components
- Accepted omissions
- Risks or limitations
- Cleanup recommendation

Update `{ba_artifacts}/ba-worklog-index.md` with final package path, verification status, unresolved questions, and next action.

After verification, ask before cleanup. Cleanup may remove only current-document working data after user confirmation:

- `{ba_artifacts}/documents/working-doc/<document-name>/`
- `{ba_artifacts}/documents/_shared-assets/<document-name>/` only if images are safely duplicated in the complete package and no other active document depends on them
- Copied current-document source from `incoming-doc/` only if the user confirms it is no longer needed there

Never delete:

- `{ba_artifacts}/documents/template-doc/`
- `{ba_artifacts}/documents/final-doc/<document-name>/`
- `{ba_artifacts}/documents/final-doc/<document-name>/_complete-package/v<version>/`

If the user declines cleanup, leave all runtime files in place and summarize what remains.

## Output Fragment

Create a verification and cleanup summary with package status, cleanup decision, files retained, files removed if any, and follow-up actions.

## Step Documentation

Create or update `{ba_artifacts}/documents/final-doc/<document-name>/step-10-package-verification-and-cleanup-notes.md` with:

- Workflow and step name
- Verification checks performed
- Cleanup question asked
- User response and evidence
- Files retained
- Files removed if confirmed
- Decisions with `DEC-###` IDs
- Assumptions
- Risks with `RISK-###` IDs
- Open questions with `Q-###` IDs
- Output fragment
- Final next action

Update `{ba_artifacts}/ba-worklog-index.md` with the completed step, artifact path, key decisions, risks, open questions, and final next action.

## Next

End the workflow or follow the user's requested adjustments.
