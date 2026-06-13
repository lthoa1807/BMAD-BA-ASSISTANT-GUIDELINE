import argparse
import json
import shutil
import zipfile
from pathlib import Path
from xml.etree import ElementTree as ET


NS = {
    "w": "http://schemas.openxmlformats.org/wordprocessingml/2006/main",
    "r": "http://schemas.openxmlformats.org/officeDocument/2006/relationships",
}


def qn(name):
    prefix, tag = name.split(":", 1)
    return "{%s}%s" % (NS[prefix], tag)


def attr(element, name):
    if element is None:
        return None
    return element.attrib.get(qn(name))


def text_of(element):
    return "".join(node.text or "" for node in element.findall(".//w:t", NS)).strip()


def paragraph_format(paragraph):
    props = paragraph.find("w:pPr", NS)
    style = props.find("w:pStyle", NS) if props is not None else None
    jc = props.find("w:jc", NS) if props is not None else None
    spacing = props.find("w:spacing", NS) if props is not None else None
    indent = props.find("w:ind", NS) if props is not None else None

    run = paragraph.find("w:r", NS)
    run_props = run.find("w:rPr", NS) if run is not None else None
    font = run_props.find("w:rFonts", NS) if run_props is not None else None
    size = run_props.find("w:sz", NS) if run_props is not None else None

    return {
        "style": attr(style, "w:val"),
        "alignment": attr(jc, "w:val"),
        "spacingBefore": attr(spacing, "w:before"),
        "spacingAfter": attr(spacing, "w:after"),
        "lineSpacing": attr(spacing, "w:line"),
        "indentLeft": attr(indent, "w:left"),
        "firstLineIndent": attr(indent, "w:firstLine"),
        "font": attr(font, "w:ascii") or attr(font, "w:eastAsia"),
        "fontSizeHalfPoints": attr(size, "w:val"),
        "bold": run_props.find("w:b", NS) is not None if run_props is not None else False,
        "italic": run_props.find("w:i", NS) is not None if run_props is not None else False,
    }


def cell_format(cell):
    props = cell.find("w:tcPr", NS)
    shading = props.find("w:shd", NS) if props is not None else None
    v_align = props.find("w:vAlign", NS) if props is not None else None
    grid_span = props.find("w:gridSpan", NS) if props is not None else None
    v_merge = props.find("w:vMerge", NS) if props is not None else None
    return {
        "fill": attr(shading, "w:fill"),
        "verticalAlignment": attr(v_align, "w:val"),
        "gridSpan": attr(grid_span, "w:val"),
        "verticalMerge": attr(v_merge, "w:val"),
    }


def parse_table(table):
    rows = []
    for row_index, row in enumerate(table.findall("w:tr", NS)):
        row_props = row.find("w:trPr", NS)
        is_header = row_props.find("w:tblHeader", NS) is not None if row_props is not None else row_index == 0
        cells = []
        for cell in row.findall("w:tc", NS):
            paragraphs = cell.findall("w:p", NS)
            cells.append(
                {
                    "text": "\n".join(text_of(paragraph) for paragraph in paragraphs).strip(),
                    "format": cell_format(cell),
                    "paragraphs": [paragraph_format(paragraph) for paragraph in paragraphs if text_of(paragraph)],
                }
            )
        rows.append({"isHeader": is_header, "cells": cells})
    return {"rowCount": len(rows), "columnCount": max((len(row["cells"]) for row in rows), default=0), "rows": rows}


def parse_sections(root):
    sections = []
    for section in root.findall(".//w:sectPr", NS):
        margins = section.find("w:pgMar", NS)
        size = section.find("w:pgSz", NS)
        sections.append(
            {
                "pageSize": {"widthTwips": attr(size, "w:w"), "heightTwips": attr(size, "w:h"), "orientation": attr(size, "w:orient")},
                "marginsTwips": {
                    "top": attr(margins, "w:top"),
                    "bottom": attr(margins, "w:bottom"),
                    "left": attr(margins, "w:left"),
                    "right": attr(margins, "w:right"),
                },
            }
        )
    return sections


def extract_images(docx_path, images_dir):
    images = []
    images_dir.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(docx_path) as package:
        media = [name for name in package.namelist() if name.startswith("word/media/")]
        for index, name in enumerate(media, start=1):
            extension = Path(name).suffix or ".bin"
            output_name = "image-%03d%s" % (index, extension)
            output_path = images_dir / output_name
            with package.open(name) as source, output_path.open("wb") as target:
                shutil.copyfileobj(source, target)
            images.append({"id": "IMG-%03d" % index, "sourcePart": name, "path": str(output_path), "placement": "uncertain"})
    return images


def extract(docx_path, images_dir):
    with zipfile.ZipFile(docx_path) as package:
        document_xml = package.read("word/document.xml")
    root = ET.fromstring(document_xml)
    body = root.find("w:body", NS)

    blocks = []
    paragraph_count = 0
    table_count = 0
    for child in list(body):
        if child.tag == qn("w:p"):
            text = text_of(child)
            if text:
                paragraph_count += 1
                blocks.append({"type": "paragraph", "text": text, "format": paragraph_format(child)})
        elif child.tag == qn("w:tbl"):
            table_count += 1
            table_data = parse_table(child)
            table_data["type"] = "table"
            blocks.append(table_data)

    images = extract_images(docx_path, images_dir)
    return {
        "schemaVersion": 1,
        "source": str(docx_path),
        "counts": {"paragraphs": paragraph_count, "tables": table_count, "images": len(images)},
        "sections": parse_sections(root),
        "blocks": blocks,
        "images": images,
        "unsupported": ["Headers, footers, comments, tracked changes, text boxes, and exact drawing anchors are not fully interpreted by this extractor."],
    }


def main():
    parser = argparse.ArgumentParser(description="Extract content and format evidence from a Word .docx file.")
    parser.add_argument("input", help="Source .docx path")
    parser.add_argument("--output", required=True, help="Output JSON path")
    parser.add_argument("--images", required=True, help="Output image folder")
    args = parser.parse_args()

    input_path = Path(args.input)
    output_path = Path(args.output)
    images_dir = Path(args.images)

    if not input_path.exists():
        raise FileNotFoundError(input_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    data = extract(input_path, images_dir)
    output_path.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
    print(output_path)


if __name__ == "__main__":
    main()
