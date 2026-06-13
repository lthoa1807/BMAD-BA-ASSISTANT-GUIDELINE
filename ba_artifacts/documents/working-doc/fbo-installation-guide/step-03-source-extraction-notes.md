# Step 03 Source Extraction Notes

## Workflow and Step

- Workflow: BA Short Document Production
- Step: Step 03 - Source Extraction
- Date: 2026-05-25

## Source Package Reviewed

- Source file: `ba_artifacts/documents/incoming-doc/FBO installation.docx`
- Source file status: read-only input; not modified.

## Extraction Method and Tools Used

- Opened the `.docx` as a Word OpenXML package.
- Extracted visible paragraph text from `word/document.xml`.
- Extracted media files from `word/media/` using document relationship order from `word/_rels/document.xml.rels`.
- Saved extracted images under `ba_artifacts/documents/_shared-assets/fbo-installation-guide/images/`.

## Extracted Counts

| Item | Count | Notes |
| --- | ---: | --- |
| Text blocks extracted | 22 | Extracted in source order. |
| Tables extracted | 0 | No separate table content identified in the source extraction. |
| Images extracted | 8 | All embedded images were saved. |
| Images skipped | 0 | None. |
| Unsupported or unreadable elements | 0 | No unreadable elements identified. |

## Extracted Source Text Summary

- Required components:
  - SQL Server minimum version 2014.
  - Database engine collation: `SQL_Latin1_General_CP1_CI_AS`.
  - SQL Server Browser startup type: `Automatic`.
  - Built-in account: `Local System`.
  - .NET Framework 3.5 and .NET Framework 4.8.
  - IIS enabled fully.
- Installation steps:
  - Download the installation package provided by FAST.
  - Run the installer.
  - Click `Next` through the setup wizard.
  - Select the program installation directory.
  - Select the option to use an installed SQL Server and enter SQL Server connection information.
  - Enter the database name and database storage path.
  - Confirm installation so the system installs the program and blank database.
  - The installer installs Crystal Reports Runtime to support report/template viewing.
  - The system is installed as a website on IIS; IT must provide the protocol needed to run the application online.
  - FAST must provide the serial key and license before the program can operate.

## Image Inventory

| ID | Extracted File | Observed Content | Placement Guidance |
| --- | --- | --- | --- |
| DOC-010 | `image-001.png` | SQL Server service accounts and SQL Server Browser set to Automatic. | SQL Server prerequisites. |
| DOC-011 | `image-002.png` | SQL Server service logon configured as `Local System`. | SQL Server service account prerequisite. |
| DOC-012 | `image-003.png` | Windows features showing .NET Framework 3.5, .NET Framework 4.8 Advanced Services, IIS Web Management Tools, and World Wide Web Services. | Windows prerequisites. |
| DOC-013 | `image-004.png` | FAST installation package folder with `Install` application. | Start installer step. |
| DOC-014 | `image-005.png` | FBO setup wizard welcome/system requirements screen. | Setup wizard start. |
| DOC-015 | `image-006.png` | Installation components, program path, and SQL Server connection screen. | Program path and SQL Server connection configuration. |
| DOC-016 | `image-007.png` | Database setup screen with system database and blank application database names/paths. | Database configuration step. |
| DOC-017 | `image-008.png` | Installation confirmation screen listing components to install. | Confirmation before installation. |

## Questions Asked

- No questions were asked during extraction.

## User Responses and Evidence

- User instructed to continue processing.

## Decisions

- DEC-007: Preserve all 8 images and reference them from the generated Markdown.
- DEC-008: Use observed image content to place screenshots near related installation steps.

## Assumptions

- Image order in document relationships reflects the intended screenshot order.
- Screenshots are safe to include in the generated guide.

## Risks

- RISK-005: Some screenshots include environment-specific values, including paths, server names, and database names. These should be treated as examples unless the user confirms they are production standards.
- RISK-006: The installer screenshots show a specific FBO release label (`R2 SP24.2.2`); the guide should avoid claiming this is the only supported version unless confirmed.

## Open Questions

- Q-007: Should environment-specific screenshot values be masked before final external distribution?
- Q-008: Is `FBO R2 SP24.2.2` the target version for this guide, or only the version shown in screenshots?

## Output Fragment

Source extraction completed successfully with 22 text blocks and 8 images. All images were retained and mapped to likely guide sections. No source file changes were made.

## Next Action

- Continue with Step 04 - Draft Generation.
