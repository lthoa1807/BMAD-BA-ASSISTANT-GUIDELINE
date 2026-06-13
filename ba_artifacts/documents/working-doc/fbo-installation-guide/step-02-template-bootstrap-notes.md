# Step 02 Template Bootstrap Notes

## Workflow and Step

- Workflow: BA Short Document Production
- Step: Step 02 - Template Bootstrap
- Date: 2026-05-25

## Template Files Checked

- Runtime short document template folder: `ba_artifacts/documents/template-doc/short-doc/`
- Existing user guide template folder: `ba_artifacts/documents/template-doc/user-guide/`
- Packaged template source: `.agents/skills/bmad-ba-short-doc-production/resources/template-doc/short-doc/`

## Files Seeded or Repaired

The runtime short document template folder was missing and was seeded from the packaged resources with these files:

- `README.md`
- `00-document-template.md`
- `writing-rules.md`
- `review-checklist.md`
- `generation-workflow.md`
- `section-map.md`
- `section-file-list.md`

No existing `user-guide` template files were overwritten.

## Questions Asked

- No question was required because the workflow permits seeding when the runtime template folder is missing.

## User Responses and Evidence

- User requested a professional user-guide format.
- Existing `user-guide` template files were present and reviewed for structure and writing rules.

## Decisions

- DEC-004: Seed the missing `short-doc` runtime template from packaged resources.
- DEC-005: Use the existing `user-guide` template as primary formatting guidance because the requested output is an IT installation user guide.
- DEC-006: Do not overwrite or modify existing reusable `user-guide` templates.

## Assumptions

- The existing `user-guide` template is acceptable for the requested professional document format.
- The short-doc runtime template is maintained as workflow infrastructure and does not replace the user-guide format for this output.

## Risks

- RISK-004: The generic short-doc template may not fully match the requested IT installation guide structure, so the final guide will combine short-doc production controls with user-guide formatting.

## Open Questions

- Q-006: Should future FBO installation guides use the `short-doc` template, the `user-guide` template, or a dedicated `installation-guide` template?

## Output Fragment

The required runtime `short-doc` template is now available. The existing `user-guide` template remains unchanged and will guide the professional formatting of the FBO Installation Guide.

## Next Action

- Continue with Step 03 - Source Extraction.
