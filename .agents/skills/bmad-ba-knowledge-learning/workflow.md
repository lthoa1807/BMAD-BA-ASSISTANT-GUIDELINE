# BA Knowledge Learning Workflow

## Purpose

Help a BA learn from source material before saving final knowledge, with enough structure to reduce hallucination and preserve version context.

## Independence Rule

Knowledge workflows and document workflows are independent by default. Only connect a knowledge note to a BA document when the user explicitly requests reuse, citation, traceability, or conflict checking.

## Steps

1. `./steps/step-01-knowledge-intake.md` - Capture source material, system context, version context, and learning goal.
2. `./steps/step-02-explain-and-teach.md` - Explain the source in BA-friendly language and identify terms, process flow, and business meaning.
3. `./steps/step-03-understanding-check.md` - Verify BA understanding and separate confirmed understanding from uncertain interpretation.
4. `./steps/step-04-gap-and-questions.md` - Record open questions, assumptions, risks, and SME confirmation needs.
5. `./steps/step-05-knowledge-note-draft.md` - Draft a structured knowledge note with status, confidence, source references, and version metadata.
6. `./steps/step-06-evidence-review.md` - Check whether important claims are source-backed, BA-confirmed, SME-confirmed, assumptions, or open questions.
7. `./steps/step-07-knowledge-base-commit.md` - Save the reviewed note and update indexes or registries when appropriate.

## Guardrails

- Do not convert unsupported claims into final facts.
- If source material is missing or ambiguous, record an assumption or open question instead of guessing.
- Preserve source references and version context wherever available.
- Maintain step records under `{ba_artifacts}/knowledge/learning/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Use stable trace IDs for knowledge items, decisions, risks, and open questions: `KNOW-001`, `DEC-001`, `RISK-001`, and `Q-001`.
