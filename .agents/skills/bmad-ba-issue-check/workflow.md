# BA Issue Check Workflow

## Purpose

Investigate a business, process, reporting, data, or SQL data-flow issue with traceable evidence, root cause analysis, solution options, and a final investigation report.

## Steps

1. `./steps/step-01-issue-intake.md` - Capture issue statement, business impact, affected scope, examples, and urgency.
2. `./steps/step-02-investigation-plan.md` - Define investigation scope, hypotheses, sources, owners, SQL boundaries, and validation approach.
3. `./steps/step-03-evidence-collection.md` - Record examples, screenshots, report extracts, logs, query outputs, and owner confirmations.
4. `./steps/step-04-sql-procedure-data-flow-deep-dive.md` - Review SQL procedure logic and map data flow using read-only evidence.
5. `./steps/step-05-root-cause-analysis.md` - Compare expected and actual behavior, classify root cause, and capture confidence.
6. `./steps/step-06-solution-options.md` - Propose solution options, owners, dependencies, risks, and validation needs.
7. `./steps/step-07-final-investigation-report.md` - Finalize the investigation report from step records and update the worklog.

## Guardrails

- Do not state root cause as fact unless supported by evidence or explicit owner confirmation.
- Treat missing source data, inaccessible systems, unclear examples, or unsafe SQL access as open questions.
- Keep SQL review read-only: metadata inspection, procedure text review, dependency tracing, and approved `SELECT` queries only.
- Do not run mutating SQL, DDL, job reruns, data fixes, or stored procedure executions with side effects.
- Do not recommend customization before checking process, master data, transaction data, configuration, reporting, access, integration, and training alternatives.
- Minimize or mask sensitive production data in stored artifacts unless the user confirms it is acceptable.
- Maintain step records under `{ba_artifacts}/issue-check/<issue-slug>/` and update `{ba_artifacts}/ba-worklog-index.md` after each step.
- Preserve upstream links to `DISC-###`, `GAP-###`, `REQ-###`, `KNOW-###`, `DOC-###`, or `REV-###` when the issue derives from existing BA artifacts.
