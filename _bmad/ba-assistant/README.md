# BA Assistant Module

BMAD custom module for business analysts. It provides a named BA Assistant agent and structured workflows with traceable step documentation:

- BA Discovery
- BA Fit Gap
- BA Requirements
- BA Knowledge Learning
- BA Document Concept
- BA Template Generator
- BA Document Writer
- BA Document Review
- BA Document Merge

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

Use `bmad-ba-knowledge-learning` independently when a BA needs to learn source material and save reviewed, version-aware knowledge notes. Knowledge notes are not linked to BA documents unless the user explicitly requests reuse, citation, traceability, or conflict checking.

Use the document workflows independently when the BA needs to plan, template, write, review, and merge Markdown-based deliverables such as proposals, surveys, end-user guidelines, UAT test cases, handover documents, or other BA-defined documents.

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

## Traceable BA Work Records

Each workflow creates step records under `{ba_artifacts}` and updates `{ba_artifacts}/ba-worklog-index.md`. Step records capture inputs reviewed, questions asked, evidence, findings, decisions, assumptions, risks, open questions, output fragments, and next actions.

The workflows use lightweight trace IDs so later artifacts can be linked back to source analysis:

- `DISC-###` for discovery findings
- `GAP-###` for fit-gap items
- `REQ-###` for requirements
- `KNOW-###` for knowledge notes
- `DOC-###` for document planning and writing items
- `REV-###` for document review findings
- `DEC-###` for decisions
- `RISK-###` for risks
- `Q-###` for open questions
