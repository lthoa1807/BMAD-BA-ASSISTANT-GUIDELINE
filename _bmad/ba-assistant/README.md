# BA Assistant Module

BMAD custom module for business analysts. It provides a named BA Assistant agent and structured workflows with traceable step documentation:

- BA Discovery
- BA Fit Gap
- BA Requirements
- BA Issue Check
- BA Knowledge Learning
- BA Document Concept
- BA Template Generator
- BA Document Writer
- BA Document Review
- BA Document Merge
- BA Short Document Production
- BA Document Format Advisor

## Install Locally

From this BMAD checkout, the module appears in the installer picker as `BA Assistant (custom module)`. It can also be installed non-interactively:

```bash
npm run install:bmad -- --modules ba-assistant --tools claude-code --yes
```

The standard custom-source route also works:

```bash
npm run install:bmad -- --custom-source ./custom-modules/ba-assistant --tools claude-code --yes
```

## Suggested Flow

1. Run `bmad-ba-discovery` to build shared business context.
2. Run `bmad-ba-fit-gap` to separate standard fit from configuration, extension, process change, and customization.
3. Run `bmad-ba-requirements` to produce implementation-ready requirements.

Use `bmad-agent-ba-assistant` for consulting questions, review, and tradeoff analysis across the business analysis lifecycle.

Use `bmad-ba-issue-check` when the BA needs to investigate a business, process, reporting, data, or SQL data-flow issue with evidence records, root cause analysis, solution options, and a final investigation report.

Use `bmad-ba-knowledge-learning` independently when a BA needs to learn source material and save reviewed, version-aware knowledge notes. Knowledge notes are not linked to BA documents unless the user explicitly requests reuse, citation, traceability, or conflict checking.

Use the document workflows independently when the BA needs to plan, template, write, review, and merge Markdown-based deliverables such as proposals, surveys, end-user guidelines, UAT test cases, handover documents, or other BA-defined documents.

Use `bmad-ba-short-doc-production` when the BA needs to turn a raw `.docx` source into a standardized short document with extracted images, working records, final Markdown, Word export when available, complete package archival, package verification, and user-confirmed cleanup.

Use `bmad-agent-document-format-advisor` when the BA needs practical guidance on document format, heading hierarchy, margins, fonts, colors, spacing, table layout, Word styles, PDF readiness, or a reusable document style standard.

## CIS Integration

BA Assistant is the ERP BA domain layer. It should own discovery records, fit-gap classification, requirements, issue investigation, evidence, traceability, and BA document artifacts.

Creative Intelligence Suite (CIS) should own generic creative work when installed:

- Use CIS Brainstorming (`BS`) for generic ideation before BA discovery or fit-gap.
- Use CIS Design Thinking (`DT`) for empathy, journey, and reframing workshops before BA evidence capture.
- Use CIS Problem Solving (`PS`) for broad option generation before BA Issue Check performs evidence-backed RCA.
- Use CIS Storytelling (`ST`) or the CIS Presentation Master agent for pitch narrative or presentation framing before BA document review checks evidence and readiness.

BA Short Document Production uses `BDS`. The previous `BS` route is deprecated because CIS owns `BS` for Brainstorming.

## Scope v0.1.0

Version `0.1.0` is the baseline runtime module for structured BA delivery. It is intentionally limited to the core path from discovery to fit-gap to requirements.

In scope:

- BA Assistant agent routing and advisory support.
- Business discovery workflow and discovery brief output.
- Fit-gap workflow and fit-gap matrix output.
- Requirements workflow and requirements pack output.
- Traceable BA work records using stable discovery, gap, requirement, decision, risk, and open-question IDs.

Out of scope for `0.1.0`:

- Dedicated presales survey workflow.
- Dedicated detailed survey workflow.
- Issue triage workflow.
- Root cause analysis workflow.
- Resolution planning workflow.
- Knowledge-base curation workflow.
- Tool integrations, automation checks, and multi-agent orchestration.

Promotion criteria for the next version:

- Pilot the three v0.1.0 workflows on real BA scenarios.
- Review whether step records are practical enough for BA teams to maintain.
- Add one new workflow only after the baseline path is stable and repeatedly useful.

## Scope v0.2.0

Version `0.2.0` expands the baseline with independent knowledge learning and document creation capabilities.

In scope:

- BA Knowledge Learning workflow for learning source material before saving reviewed knowledge notes.
- Version-aware knowledge metadata for systems, modules, functions, customers, environments, and product versions.
- Evidence controls for source-backed facts, BA observations, SME confirmations, assumptions, and open questions.
- BA document concept workflow for document planning.
- BA template generation workflow for Markdown outlines and section guidance.
- BA document writer workflow for section-level drafting.
- BA document review workflow for evidence and readiness review.
- BA document merge workflow for final Markdown assembly.

Out of scope for `0.2.0`:

- Mandatory knowledge-to-document traceability.
- Automatic document updates when knowledge changes.
- Dedicated `.docx` export implementation.
- Hotfix tracking and detailed change monitoring.
- Tool integrations, automation checks, and multi-agent orchestration.

## Scope v0.3.0

Version `0.3.0` adds a dedicated short document production workflow for Word-source document standardization.

In scope:

- Short document production from raw `.docx` sources.
- Template bootstrap from packaged `template-doc/short-doc` resources.
- Draft generation with extracted images.
- Review records for open questions, assumptions, and processing notes.
- Final Markdown and Word export when supported tooling is available.
- Complete package archival under `final-doc/<document-name>/_complete-package/v<version>/`.
- Package verification.
- User-confirmed cleanup of current-document working data.

Out of scope for `0.3.0`:

- Generic arbitrary document conversion beyond the short document workflow.
- Automatic OCR from screenshots.
- Distribution of real binary sample documents.
- Automatic cleanup without user confirmation.
- Replacement of `bmad-ba-document-merge`.

## Scope v0.4.0

Version `0.4.0` adds a dedicated document formatting advisory agent for BA deliverables.

In scope:

- Document formatting consultation for headings, numbering, margins, fonts, colors, spacing, tables, lists, captions, Word styles, and PDF readiness.
- Practical format recommendations for proposals, surveys, user guides, UAT packs, handover documents, requirements packs, and other BA documents.
- Routing from the BA Assistant agent when the user asks format-focused questions.

Out of scope for `0.4.0`:

- Automatic `.docx` style modification.
- Automatic visual rendering or PDF comparison.
- Mandatory replacement of existing customer or brand document standards.

## Scope v0.5.0

Version `0.5.0` adds a dedicated issue check workflow for evidence-backed business, process, reporting, data, and SQL data-flow investigations.

In scope:

- Issue intake with expected vs actual behavior, impact, affected scope, and sample records.
- Investigation planning with hypotheses, evidence needs, owners, SQL boundaries, and validation approach.
- Evidence register for examples, screenshots, report extracts, query outputs, logs, procedure references, and owner confirmations.
- Read-only SQL procedure and data-flow review for stored procedure logic, dependencies, lineage, and validation gaps.
- Root cause analysis with confidence, ruled-out causes, and business-facing cause classification.
- Solution options and developer or DBA handoff notes when technical validation or remediation is needed.
- Final `investigation-report.md` assembled from step records.

Out of scope for `0.5.0`:

- Applying production data fixes.
- Executing mutating SQL, job reruns, deployments, or stored procedures with side effects.
- Final technical design for code, indexing, locking, performance tuning, or database deployment.
- Replacing developer, DBA, integration owner, or product-owner validation for technical root causes.

## Traceable BA Work Records

Each workflow creates step records under `{ba_artifacts}` and updates `{ba_artifacts}/ba-worklog-index.md`. Step records capture inputs reviewed, questions asked, evidence, findings, decisions, assumptions, risks, open questions, output fragments, and next actions.

The workflows use lightweight trace IDs so later artifacts can be linked back to source analysis:

- `DISC-###` for discovery findings
- `GAP-###` for fit-gap items
- `REQ-###` for requirements
- `ISSUE-###` for issue observations
- `EVD-###` for issue evidence records
- `SQL-###` for SQL procedure evidence
- `DATA-###` for data observations
- `FLOW-###` for data-flow findings
- `CAUSE-###` for root cause findings
- `SOL-###` for solution options
- `KNOW-###` for knowledge notes
- `DOC-###` for document planning and writing items
- `REV-###` for document review findings
- `DEC-###` for decisions
- `RISK-###` for risks
- `Q-###` for open questions
