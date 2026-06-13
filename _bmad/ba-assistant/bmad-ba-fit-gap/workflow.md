# BA Fit Gap Workflow

## Purpose

Classify business needs into standard fit, configuration, extension, customization, process change, data, integration, reporting, or unresolved decision.

## Steps

1. `./steps/step-01-baseline.md` - Establish process and capability baseline.
2. `./steps/step-02-classify-gaps.md` - Classify gaps and risks.
3. `./steps/step-03-matrix.md` - Produce the fit-gap matrix.

## Guardrails

- Do not accept customization requests without business impact and standard-fit analysis.
- Separate a real capability gap from training, data quality, policy, or change management issues.
- Make decision owners explicit.
- Maintain step records under `{ba_artifacts}/fit-gap/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Use stable trace IDs for gap items, decisions, risks, and open questions: `GAP-001`, `DEC-001`, `RISK-001`, and `Q-001`.
- Preserve upstream `DISC-###` links where fit-gap entries derive from discovery findings.
