# Skill: bmad-md-docx-formatter

## Overview
Prepare Markdown so DOCX output matches a professional business-installation guide style. This skill is tuned to the edited FBO sample format and enforces consistent structure, numbering, spacing, and conversion readiness.

## Trigger
Use when the user asks to format Markdown before DOCX generation, align output to a professional standard, or replicate the FBO installation guide style.

## Format Profile (Detected Target Style)

### Page and base text
- Margins: 1 inch on all sides.
- Body font: Times New Roman, 12 pt.
- Standard left-aligned paragraph flow.

### Heading system
- H1: document title, uppercase preferred, centered.
- H2: major section headings, numbered (for example `1. Document Control`).
- H3: subsection headings, numbered under parent section.
- Keep numbering strictly sequential; do not skip or mix indices.

### Section separators
- Use horizontal rules (`---`) between major sections in Markdown.
- Avoid manual dash-line paragraphs (for example `----------------------------------------`) in source Markdown.

### Content conventions
- Use concise lead paragraphs after each heading.
- Use bullets for short capability lists.
- Use numbered lists for procedures/steps.
- Use simple two- or three-column tables with clear headers.

### Images and captions
- Insert images after relevant step blocks.
- Add one caption line immediately below each image.
- Keep caption wording short and descriptive.

## Capabilities

1. **Structure audit**
   - Validate heading hierarchy (`#` -> `##` -> `###`).
   - Detect numbering gaps/inconsistencies in section titles.
   - Flag manual separator lines and replace with Markdown HR.

2. **Professional Markdown normalization**
   - Standardize title/meta block and document-control fields.
   - Normalize list and table syntax for stable DOCX conversion.
   - Enforce clean blank-line spacing between blocks.

3. **DOCX conversion readiness**
   - Verify image paths and caption placement.
   - Prepare YAML metadata for conversion tooling.
   - Output a conversion-ready Markdown file with a brief change log.

## YAML baseline for conversion
Use this baseline at top of Markdown (adjust values as needed):

```yaml
---
title: <Document Title>
author: <Owner>
date: <YYYY-MM-DD>
lang: en-US
toc: false
numbersections: false
---
```

Note: section numbering is handled explicitly in headings for this style profile.

## Execution
1. Read target Markdown and identify current structure and style drift.
2. Apply the format profile rules above.
3. Return the normalized Markdown ready for DOCX generation.
4. Report any blocked items (missing images, ambiguous numbering, or incomplete section titles).
