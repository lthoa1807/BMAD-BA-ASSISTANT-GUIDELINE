# BA Assistant vs CIS Overlap Review

Date: 2026-05-25

## Scope

Reviewed the local `custom-modules/ba-assistant` module against the official Creative Intelligence Suite (CIS) module metadata and help catalog available from `bmad-code-org/bmad-module-creative-intelligence-suite`.

Local CIS source was not present in this checkout under `.bmad`, `external-modules`, or `node_modules`, so CIS file-level details are based on official `module.yaml`, `module-help.csv`, and repository documentation.

## BA Assistant Inventory

### Agents

| Agent | File | Menu | Purpose |
| --- | --- | --- | --- |
| Nora / BA Assistant | `bmad-agent-ba-assistant/SKILL.md` | `BA` | Routes and advises across BA discovery, fit-gap, requirements, issue checks, knowledge learning, document production, and implementation tradeoffs. |
| Mira / Document Format Advisor | `bmad-agent-document-format-advisor/SKILL.md` | `DF` | Advises on headings, numbering, margins, fonts, colors, tables, Word/PDF readiness, and reusable BA document style standards. |

### Workflows And Skills

| Skill | Help Menu | Files | Purpose |
| --- | --- | --- | --- |
| `bmad-ba-discovery` | `BD` | `bmad-ba-discovery/SKILL.md`, `workflow.md`, `steps/*` | Captures scope, stakeholders, current-state process, systems, data, controls, pain points, and discovery brief. |
| `bmad-ba-fit-gap` | `BF` | `bmad-ba-fit-gap/SKILL.md`, `workflow.md`, `steps/*` | Classifies needs into standard fit, configuration, extension, customization, process, data, integration, reporting, security/control, or unresolved decisions. |
| `bmad-ba-requirements` | `BR` | `bmad-ba-requirements/SKILL.md`, `workflow.md`, `steps/*` | Converts discovery and fit-gap findings into implementation-ready requirements, acceptance criteria, and traceability. |
| `bmad-ba-knowledge-learning` | `BK` | `bmad-ba-knowledge-learning/SKILL.md`, `workflow.md`, `steps/*` | Learns source material with evidence controls and version-aware knowledge notes independent from document drafting. |
| `bmad-ba-document-concept` | `BC` | `bmad-ba-document-concept/SKILL.md`, `workflow.md`, `steps/*` | Plans a BA document: goal, audience, scope, inputs, assumptions, questions, and evidence needs. |
| `bmad-ba-template-generator` | `BT` | `bmad-ba-template-generator/SKILL.md`, `workflow.md`, `steps/*` | Generates a Markdown template, section outline, and writing guidance for a planned BA document. |
| `bmad-ba-document-writer` | `BW` | `bmad-ba-document-writer/SKILL.md`, `workflow.md`, `steps/*` | Drafts selected BA document sections while preserving assumptions, questions, and evidence boundaries. |
| `bmad-ba-document-review` | `BV` | `bmad-ba-document-review/SKILL.md`, `workflow.md`, `steps/*` | Reviews BA document sections for unsupported claims, missing decisions, unclear assumptions, consistency, and readiness. |
| `bmad-ba-document-merge` | `BM` | `bmad-ba-document-merge/SKILL.md`, `workflow.md`, `steps/*` | Merges approved BA document sections into a final Markdown document with export notes. |
| `bmad-ba-short-doc-production` | `BDS` | `bmad-ba-short-doc-production/SKILL.md`, `workflow.md`, `steps/*`, `resources/*` | Produces a standardized short document package from raw `.docx` sources with extraction, final Markdown, optional Word export, package verification, and cleanup guardrails. |
| `bmad-ba-issue-check` | `BI` | `bmad-ba-issue-check/SKILL.md`, `workflow.md`, `steps/*` | Investigates business, process, reporting, data, or SQL data-flow issues with evidence-backed RCA and solution options. |

### Help Entries

The public module help catalog is `module-help.csv`. It exposes `BA`, `DF`, `BD`, `BF`, `BR`, `BK`, `BC`, `BT`, `BW`, `BV`, `BM`, `BDS`, and `BI`.

`BDS` replaces the prior `BS` short-document menu code because official CIS uses `BS` for `bmad-brainstorming`.

## CIS Capability Baseline

Official CIS provides these creative/innovation capabilities:

| CIS Capability | Skill/Menu | Agent |
| --- | --- | --- |
| Innovation Strategy | `bmad-cis-innovation-strategy` / `IS` | Victor, Innovation Strategist |
| Problem Solving | `bmad-cis-problem-solving` / `PS` | Dr. Quinn, Creative Problem Solver |
| Design Thinking | `bmad-cis-design-thinking` / `DT` | Maya, Design Thinking Coach |
| Brainstorming | `bmad-brainstorming` / `BS` | Carson, Brainstorming Coach |
| Storytelling | `bmad-cis-storytelling` / `ST` | Sophia, Master Storyteller |
| Presentation Support | Help catalog does not list a separate workflow in the fetched CSV; `module.yaml` lists `bmad-cis-agent-presentation-master` / Caravaggio. | Caravaggio, Presentation Master |

## Overlap Matrix

| Function / Flow | BA Assistant Location | CIS Equivalent | Recommendation |
| --- | --- | --- | --- |
| Generic brainstorming / idea generation | No dedicated BA workflow. Nora can answer advisory questions, but no structured brainstorming flow exists. | `bmad-brainstorming` / `BS`, Brainstorming Coach | Reuse CIS. Do not add a BA duplicate. Nora should delegate generic brainstorming to CIS and then resume BA discovery/fit-gap. |
| Design thinking / empathy-driven discovery | BA Discovery captures stakeholders, outcomes, process, pain points, and workshop needs. It is BA discovery, not full design thinking. | `bmad-cis-design-thinking` / `DT`, Design Thinking Coach | Refactor by composition only. Use CIS for empathy/reframing workshops, then BA Discovery records ERP/process evidence and trace IDs. |
| Innovation / business model strategy | No dedicated BA workflow. Fit-gap protects standard fit and implementation tradeoffs, not innovation strategy. | `bmad-cis-innovation-strategy` / `IS`, Innovation Strategist | Reuse CIS. Keep BA Assistant focused on implementation implications after innovation direction is selected. |
| Creative problem solving | `bmad-ba-issue-check` includes RCA and solution options, but is evidence-backed and issue-specific. | `bmad-cis-problem-solving` / `PS`, Creative Problem Solver | Keep BA Issue Check. Optionally delegate early broad problem framing to CIS, then run BA Issue Check for evidence, SQL/data flow, root cause, and handoff. |
| Root cause analysis for ERP/process/data issues | `bmad-ba-issue-check`, especially steps 3-6. | `bmad-cis-problem-solving` can help generic problem solving. | Keep BA Assistant. This is BA/ERP/data-specific and has safety guardrails for SQL, evidence, and ownership. |
| Current-state process discovery | `bmad-ba-discovery`, steps 1-3. | No direct CIS replacement; design thinking can enrich user empathy. | Keep BA Assistant. CIS can be a pre-workshop enhancer, not the system of record. |
| Fit-gap analysis | `bmad-ba-fit-gap`, steps 1-3. | No direct CIS replacement. | Keep BA Assistant. This is core ERP BA domain logic. |
| Requirements / BRD / FRD style outputs | `bmad-ba-requirements`, document workflows. | No direct CIS replacement. | Keep BA Assistant. CIS can help narrative framing, not requirements traceability. |
| Storytelling / executive narrative | BA document writer/review can draft/review BA sections, but does not provide story frameworks. | `bmad-cis-storytelling` / `ST`, Master Storyteller | Refactor by composition. Use CIS for pitch/story narrative; BA Assistant validates evidence, decisions, and BA readiness. |
| Presentation / visual communication | `bmad-agent-document-format-advisor` covers professional document formatting. | Presentation Master agent in CIS module metadata. | Keep both. Use CIS for persuasive presentation design; keep BA format advisor for Word/PDF/BA document standards. |
| Short Word-source document production | `bmad-ba-short-doc-production` with extraction/package lifecycle. | No direct CIS replacement. | Keep BA Assistant. This is document operations and artifact packaging, not creative storytelling. |
| Knowledge learning | `bmad-ba-knowledge-learning`. | No direct CIS replacement. | Keep BA Assistant. This is evidence/version-aware BA knowledge management. |

## Overlap Assessment

### Near-Duplicates Of CIS

No BA-assistant workflow is a near-copy of CIS brainstorming, design thinking, innovation strategy, or generic storytelling.

The only menu-level conflict found was `BS`, previously used by BA short document production and also used by CIS Brainstorming. This should be treated as a hard conflict when BA-assistant and CIS are installed together.

### BA/ERP-Specific Flows That Borrow General Thinking Patterns

| Flow | Assessment | Action |
| --- | --- | --- |
| `bmad-ba-issue-check` | Uses problem-solving and RCA concepts, but is deeply BA/ERP/data/SQL specific. | Keep. Add optional routing from Nora to CIS for generic reframing before evidence-backed investigation. |
| `bmad-ba-discovery` | Can benefit from design thinking, but records BA process/system/data/control evidence. | Keep. Delegate empathy/design-thinking workshops to CIS when requested. |
| Document workflows | Can benefit from storytelling/presentation support, but are evidence and BA artifact workflows. | Keep. Delegate narrative/presentation work to CIS when the user asks for pitch or storytelling. |

## Target Architecture

CIS should be the creative and innovation layer:

- Brainstorming and ideation.
- Design thinking and empathy/reframing workshops.
- Innovation strategy and business model exploration.
- Generic creative problem solving.
- Storytelling and presentation framing.

BA Assistant should be the ERP BA domain layer:

- AS-IS / TO-BE discovery and current-state evidence.
- ERP fit-gap classification and standard-fit protection.
- BRD/FRD/use-case/user-story style requirement packs.
- Process, data, integration, reporting, security/control, migration, and cutover concerns.
- RACI/decision/risk/open-question traceability when added.
- Issue investigation with evidence, SQL/data-flow review, root cause analysis, and handoff notes.
- BA document production and Word/Markdown artifact packaging.

## Refactor Plan

1. Standardize module boundary.

- Keep BA-assistant positioned as BA/ERP delivery and artifact layer.
- Avoid adding generic brainstorming, design thinking, innovation, or storytelling workflows to BA-assistant.
- Use CIS when the user asks for fuzzy front-end creativity.

2. Reuse CIS by delegation.

- In Nora (`bmad-agent-ba-assistant/SKILL.md`), route generic brainstorming to `bmad-brainstorming`.
- Route design thinking to `bmad-cis-design-thinking`.
- Route innovation strategy to `bmad-cis-innovation-strategy`.
- Route generic problem solving/reframing to `bmad-cis-problem-solving`.
- Route storytelling/pitch narrative to `bmad-cis-storytelling`.
- Route presentation design to `bmad-cis-agent-presentation-master` when installed.

3. Fix registration and help.

- Update `module-help.csv` so short document production uses `BDS`, not `BS`.
- Update Nora menu to use `BDS`.
- Update README and builder plan notes that still mention `BS` for short document production.
- Keep descriptions explicit that BA-assistant is a BA/ERP domain layer, not a general creative suite.

4. Migration.

- Treat old `BS` for BA short document production as deprecated because CIS owns `BS` for Brainstorming.
- Tell internal users to use `BDS` for short-document production.
- Recommended usage pattern: CIS first for ideation/design thinking/problem framing, then BA-assistant for discovery, fit-gap, requirements, investigation, and BA artifacts.

## Files To Update

| File | Change |
| --- | --- |
| `module.yaml` | Clarify BA-assistant as ERP/business-analysis domain module. |
| `module-help.csv` | Change short-document trigger from `BS` to `BDS`; clarify domain-layer descriptions. |
| `bmad-agent-ba-assistant/SKILL.md` | Change menu trigger to `BDS`; add CIS delegation rules. |
| `README.md` | Document CIS integration pattern and `BDS` trigger. |
| `builder/plan/PLAN-v0.3.0.md` | Update historical implementation plan references from `BS` to `BDS` where they describe current menu registration. |

## Implementation Notes

Useful commands:

```bash
npm run install:bmad -- --modules ba-assistant --tools claude-code --yes
npm run install:bmad -- --custom-source ./custom-modules/ba-assistant --tools claude-code --yes
npm run validate:skills
npm run test:refs
```

If installing with CIS, include both modules in the target install command, for example:

```bash
npm run install:bmad -- --modules ba-assistant,cis --tools claude-code --yes
```

Before pushing repository changes, follow project guidance and run:

```bash
npm ci && npm run quality
```

## Warnings

- Do not reference CIS internal files from BA-assistant. Cross-module composition should invoke CIS skills by skill name, not by path.
- Avoid reusing CIS menu codes in BA-assistant. `BS` is owned by CIS Brainstorming.
- If CIS is not installed in a target environment, Nora should explain that the creative flow requires CIS installation and continue with BA-assistant domain workflows when appropriate.
