# Step 01 Support Intake Notes

## Workflow and Step

- Workflow: BA Short Document Production
- Step: Step 01 - Support Intake
- Date: 2026-05-25

## Inputs Reviewed

- Source file: `ba_artifacts/documents/incoming-doc/FBO installation.docx`
- User request: rewrite and professionally format the installation guide in English using a user-guide format.
- Audience: IT department responsible for understanding how to install FBO (Fast Business Online).

## Questions Asked

- No additional blocking questions were asked. Missing metadata is recorded as assumptions or open questions to avoid delaying document production.

## User Responses and Evidence

- The user confirmed the document target is an English installation guide for FBO.
- The user confirmed the audience is IT.
- Source document content includes prerequisites and installation steps for SQL Server, .NET Framework, IIS, the FAST-provided installer, SQL/database configuration, Crystal Reports Runtime, IIS website deployment, and FAST license/serial activation.

## Confirmed Document Metadata

- DOC-001: Document title: `FBO Installation Guide`.
- DOC-002: Product name: `FBO (Fast Business Online)`.
- DOC-003: Document slug: `fbo-installation-guide`.
- DOC-004: Source file remains read-only under `incoming-doc/`.
- DOC-005: Target language: English.
- DOC-006: Communication language with requester: Vietnamese.
- DOC-007: Primary audience: IT department / IT administrator.
- DOC-008: Requested output: professional Markdown document in user-guide style. Word export is not confirmed in this step.
- DOC-009: Target version: `v0.1` for first generated draft/final output.

## Decisions

- DEC-001: Use `fbo-installation-guide` as the safe folder slug.
- DEC-002: Treat unclear technical details as open questions instead of inventing values.
- DEC-003: Preserve extracted screenshots as supporting assets and flag any placement uncertainty.

## Assumptions

- The source document is the authoritative installation outline for this version of the guide.
- The guide should be concise but complete enough for IT to follow installation and hand off licensing steps to FAST.
- The document should use English section titles and professional IT installation-guide language.
- The first released document version is `v0.1` unless the user provides a different version.

## Risks

- RISK-001: Source document does not specify operating system version, IIS role services, port/protocol, SQL authentication mode, installer file name, database naming rules, or license process details.
- RISK-002: Screenshot ordering may need user validation because the source text extraction does not explicitly identify each image caption.
- RISK-003: Source document mentions `crytal report runtime`; this is interpreted as `Crystal Reports Runtime` and should be verified.

## Open Questions

- Q-001: Which Windows Server versions are officially supported for FBO installation?
- Q-002: Should SQL Server authentication use Windows Authentication, SQL Server Authentication, or either option?
- Q-003: What protocol, host name, port, and SSL/TLS requirements should IT configure for online access?
- Q-004: What is the standard installer package name and expected version number?
- Q-005: Should the final output also be exported to `.docx`?

## Output Fragment

The document production will create an English `FBO Installation Guide` for IT administrators from the source file `FBO installation.docx`, using `fbo-installation-guide` as the working/final folder name and `v0.1` as the first version. Missing technical details will remain visible as assumptions or open questions.

## Next Action

- Continue with Step 02 - Template Bootstrap.
