# Review Notes

## Readiness Status

The draft is ready for user review and can be finalized as `v0.1` with caveats. It is not yet production-ready for external distribution until the open questions are resolved or explicitly accepted.

## Normalization Decisions

- DEC-012: Rewrote Vietnamese source notes into professional English installation-guide language.
- DEC-013: Normalized `Net framwork` to `.NET Framework`.
- DEC-014: Normalized `crytal report runtime` to `Crystal Reports Runtime`.
- DEC-015: Reframed `Click Next` source steps into action-oriented installation procedure sections.
- DEC-016: Treated screenshot values such as server name, path, database name, and SQL login as examples unless confirmed.

## Image Placement Review

All 8 extracted images were placed near their most relevant installation sections. Placement is considered reasonable based on observed screenshot content, but final validation should be completed by the document owner or SME.

## Content Excluded or Limited

- No detailed SQL Server installation procedure was added because the source only states prerequisites.
- No detailed IIS binding or SSL/TLS setup was added because the source only states that IT must provide the protocol.
- No license activation procedure was added because the source states FAST will perform the next steps.
- No exact installer package name/version was asserted beyond what appears in screenshots.

## Readiness Concerns

- RISK-009: The guide depends on IT/FAST confirmation for supported OS, authentication method, IIS protocol, and target FBO version.
- RISK-010: If screenshots are shared externally, environment-specific values may need masking.

## Recommended Next Action

Proceed to final Markdown `v0.1` with the open questions retained, then request IT/FAST review before Word/PDF publication.
