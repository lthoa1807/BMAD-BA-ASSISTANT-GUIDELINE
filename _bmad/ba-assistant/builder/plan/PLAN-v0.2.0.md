# BA Assistant v0.2.0 Plan

## Purpose

Expand the BA Assistant module from the v0.1.0 discovery, fit-gap, and requirements baseline into a broader BA support module with two independent capability areas:

- BA knowledge learning and version-aware knowledge notes.
- BA document creation and review workflows.

The two capability areas must remain independent by default. The assistant must only connect knowledge notes to BA documents when the user explicitly asks for reuse, citation, traceability, or conflict checking.

## Requirements Baseline

### Core Requirements

- Support an independent BA knowledge learning workflow.
- Support independent BA document creation workflows.
- Do not force links between knowledge notes and BA documents.
- Allow optional knowledge-to-document reuse only when explicitly requested by the user.
- Support version-aware knowledge notes for large systems.
- Use Markdown as the canonical authoring format for documents and knowledge notes.
- Support large documents by splitting content into section files and merging later.
- Include anti-hallucination controls through evidence, assumptions, open questions, confidence, and status fields.
- Exclude hotfix tracking and detailed change monitoring from v0.2.0.

### Explicit Independence Rule

Knowledge workflows and document workflows are independent by default.

The BA Assistant must not assume that knowledge base content should be linked to a BA document unless the user explicitly requests one of the following actions:

- Reuse confirmed knowledge in a document.
- Cite knowledge notes from a document.
- Create traceability from document sections to knowledge notes.
- Check a document for conflicts against the knowledge base.

## In Scope

### Knowledge Capability

- Add a learning-first knowledge workflow for helping a BA understand source material before saving final knowledge.
- Capture learning notes, open questions, assumptions, and final reviewed knowledge notes.
- Support short tips, large functional notes, customer-specific notes, and system/module/function notes.
- Support system and version metadata so knowledge can apply to one or more product versions.
- Provide lightweight index and registry guidance for search and maintenance.

### Document Capability

- Add workflows for document concept review, template generation, section writing, review, and merge.
- Support common BA deliverables, including:
  - General proposal.
  - Survey document.
  - End-user guideline.
  - UAT test cases.
  - Handover document.
  - Other BA-defined documents.
- Support large documents by writing each section as a separate Markdown file.
- Support final merged Markdown output.
- Treat `.docx` export as optional future capability, not required in v0.2.0.

### Anti-Hallucination Controls

- Separate source-backed facts from assumptions, draft interpretations, open questions, and confirmed decisions.
- Require unsupported claims to be recorded as assumptions or open questions instead of final facts.
- Encourage evidence registers for document workflows when evidence is available.
- Encourage confidence and status metadata for knowledge notes.

## Out Of Scope

- Hotfix tracking.
- Full change monitoring.
- Detailed change register management.
- Automatic impact analysis across documents and knowledge notes.
- Automatic document updates when knowledge changes.
- Mandatory knowledge-to-document traceability.
- Mandatory `.docx` export implementation.
- Tool integrations, automation checks, and multi-agent orchestration beyond existing module conventions.

## Proposed Workflows

### BA Knowledge Learning

Workflow directory: `bmad-ba-knowledge-learning`

Purpose: Help a BA learn from source material, clarify understanding, and produce a reviewed, version-aware knowledge note.

Proposed steps:

1. `step-01-knowledge-intake.md` - Capture source material, system context, version context, and learning goal.
2. `step-02-explain-and-teach.md` - Explain the source in BA-friendly language and identify terms, process flow, and business meaning.
3. `step-03-understanding-check.md` - Ask questions to verify BA understanding and separate confirmed understanding from uncertain interpretation.
4. `step-04-gap-and-questions.md` - Record open questions, assumptions, risks, and items requiring SME confirmation.
5. `step-05-knowledge-note-draft.md` - Draft a structured knowledge note with status, confidence, source references, and version metadata.
6. `step-06-evidence-review.md` - Check whether important claims are source-backed, BA-confirmed, SME-confirmed, assumptions, or open questions.
7. `step-07-knowledge-base-commit.md` - Save the reviewed note and update indexes or registries when appropriate.

### BA Document Concept

Workflow directory: `bmad-ba-document-concept`

Purpose: Clarify document goal, audience, scope, source inputs, constraints, required sections, and output expectations before drafting.

Expected outputs:

- `00-document-plan.md`
- `_open-questions.md`
- `_assumptions.md`
- Optional `_evidence-register.md`

### BA Template Generator

Workflow directory: `bmad-ba-template-generator`

Purpose: Generate a fit-for-purpose Markdown document outline or template based on document type, audience, and scope.

Expected outputs:

- `00-document-template.md`
- Section file list.
- Writing guidance per section.

### BA Document Writer

Workflow directory: `bmad-ba-document-writer`

Purpose: Write one or more document sections using the document plan, user-provided source material, and optional confirmed knowledge when explicitly requested.

Expected outputs:

- Numbered section files such as `01-overview.md`, `02-scope.md`, and `03-process.md`.
- Updated `_open-questions.md`, `_assumptions.md`, and `_evidence-register.md` when relevant.

### BA Document Review

Workflow directory: `bmad-ba-document-review`

Purpose: Review document sections for unsupported claims, unclear assumptions, missing decisions, inconsistent terminology, and readiness for stakeholder review.

Expected outputs:

- `_review-findings.md`
- Updated `_open-questions.md`
- Updated `_assumptions.md`
- Optional `_traceability-matrix.md` only when the user requests traceability.

### BA Document Merge

Workflow directory: `bmad-ba-document-merge`

Purpose: Merge approved section files into one final Markdown document.

Expected outputs:

- `merged.md`
- Optional export notes for future `.docx` conversion.

## Proposed Artifact Structure

### Document Artifacts

Default root:

```text
docs/ba-assistant/documents/<document-name>/
```

Recommended files:

```text
00-document-plan.md
00-document-template.md
01-<section-name>.md
02-<section-name>.md
03-<section-name>.md
_evidence-register.md
_open-questions.md
_assumptions.md
_decisions.md
_review-findings.md
_traceability-matrix.md
merged.md
```

`_traceability-matrix.md` is optional and should only be created when traceability is requested or clearly required by the selected document workflow.

### Knowledge Artifacts

Default root:

```text
docs/ba-assistant/knowledge/
```

Recommended files:

```text
_knowledge-index.md
_system-registry.md
systems/<system-name>/_system-profile.md
systems/<system-name>/_version-registry.md
systems/<system-name>/learning/<topic-name>/01-source-summary.md
systems/<system-name>/learning/<topic-name>/02-ba-learning-notes.md
systems/<system-name>/learning/<topic-name>/03-understanding-check.md
systems/<system-name>/learning/<topic-name>/04-open-questions.md
systems/<system-name>/learning/<topic-name>/05-knowledge-note-draft.md
systems/<system-name>/notes/<final-knowledge-note>.md
```

## Knowledge Note Metadata

Recommended metadata fields:

```yaml
id: KNOW-001
type: functional-note
system: TBD
module: TBD
function: TBD
customer: TBD
tags: []
status: learning
confidence: low
source_refs: []
last_verified: TBD
applies_to_versions: []
environment: TBD
review_after: TBD
```

Recommended statuses:

- `learning`
- `draft`
- `reviewed`
- `confirmed`
- `outdated`
- `needs-sme-review`

Recommended evidence classifications:

- `source-backed`
- `decision-backed`
- `BA-confirmed`
- `SME-confirmed`
- `assumption`
- `open-question`
- `draft-ba-observation`
- `draft-interpretation`

## Nora Agent Menu Updates

Add menu entries for the new workflows after the current discovery, fit-gap, and requirements entries.

Suggested entries:

- `BK` - Run BA Knowledge Learning.
- `BD` - Run BA Document Concept.
- `BT` - Generate BA Document Template.
- `BW` - Write BA Document Section.
- `BR` - Review BA Document.
- `BM` - Merge BA Document.

The menu should make clear that knowledge and document workflows are separate unless the user asks to connect them.

## Implementation Phases

### Phase 1: Module Plan And Documentation

- Add this v0.2.0 plan file.
- Update `README.md` with the v0.2.0 direction after workflow files are created.
- Keep v0.1.0 behavior documented as the existing baseline.

### Phase 2: Knowledge Learning Workflow

- Create `bmad-ba-knowledge-learning/SKILL.md`.
- Create `bmad-ba-knowledge-learning/workflow.md`.
- Create the seven proposed step files.
- Include version-aware metadata guidance and evidence classification rules.

### Phase 3: Document Workflows

- Create document concept workflow.
- Create template generator workflow.
- Create document writer workflow.
- Create document review workflow.
- Create document merge workflow.
- Ensure each workflow can operate without knowledge-base linking.

### Phase 4: Agent And Help Registration

- Update `bmad-agent-ba-assistant/SKILL.md` with new menu options.
- Update `module-help.csv` with new workflow entries.
- Update `module.yaml` description if needed.

### Phase 5: Validation

- Run targeted skill validation if available.
- Run `npm run validate:skills`.
- Run `npm run quality` before commit or push.

## Acceptance Criteria

- The module has a documented v0.2.0 plan.
- New knowledge workflow is learning-first, not just note capture.
- New document workflows support concept, template, writing, review, and merge.
- Knowledge and document workflows can run independently.
- Optional knowledge-to-document linking only occurs on explicit user request.
- Workflows preserve BMAD-style traceability without forcing unnecessary complexity.
- Unsupported claims are handled as assumptions or open questions, not facts.
- Hotfix tracking and detailed change monitoring are not introduced in v0.2.0.
