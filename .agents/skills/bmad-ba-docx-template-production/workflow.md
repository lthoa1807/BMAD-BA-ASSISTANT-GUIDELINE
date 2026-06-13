# BA DOCX Template Production Workflow

## Purpose

Create a reusable Word template from a source `.docx`, then generate a new `.docx` from user-provided content while preserving complex layout features such as centered headings, tables, cell shading, borders, signature blocks, and document margins.

## Steps

1. `./steps/step-01-intake.md` - Confirm source file, output name, target language, reuse expectations, and required fidelity.
2. `./steps/step-02-source-extraction.md` - Extract ordered Word content, tables, images, and style metadata without editing the source.
3. `./steps/step-03-format-profile.md` - Summarize the source document's layout rules and formatting intent.
4. `./steps/step-04-template-build.md` - Build a reusable JSON template that supports complex DOCX formatting.
5. `./steps/step-05-user-content-mapping.md` - Map user-provided content into the template fields and identify missing inputs.
6. `./steps/step-06-docx-generation.md` - Generate the Word document from the template and mapped content.
7. `./steps/step-07-verification.md` - Verify generated output, record gaps, and recommend next actions.

## Guardrails

- Do not edit raw source files in `incoming-doc/`.
- Do not claim full fidelity when headers, footers, images, nested tables, merged cells, or advanced Word features were not reproduced.
- Do not replace a reusable approved template without making a backup or getting user confirmation.
- Do not invent business content; use placeholders and open questions when user input is missing.
- Maintain step records under `working/<document-name>/` or `final/<document-name>/` and update `{ba_artifacts}/ba-worklog-index.md` when available.
- Use stable trace IDs for document items, decisions, risks, and questions: `DOC-001`, `DEC-001`, `RISK-001`, and `Q-001`.

## Template Capability Baseline

The generated template should support at minimum:

- Page setup: A4 portrait, margins, default font, default size.
- Paragraphs: text, bold, italic, size, alignment, spacing before/after.
- Headings: levels, numbering text when present, alignment.
- Tables: column widths, header rows, cell shading, borders, vertical alignment, paragraph alignment per cell.
- Repeating collections: sections, bullets, rows, follow-up/action tables.
- Signature blocks: two-column or multi-column signing areas.
- Images: extracted inventory and optional placement when enough evidence exists.
