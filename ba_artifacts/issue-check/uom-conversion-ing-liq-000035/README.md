# ISSUE-001: UOM Conversion ING-LIQ-000035

## Status

Closed - Root Cause Confirmed.

## Artifacts

| File | Purpose |
| --- | --- |
| `final/investigation-report.md` | Final investigation and closure report |
| `supporting/evidence-summary.md` | Condensed evidence table and root cause summary |

## Summary

Issue: `3 Box` for item `ING-LIQ-000035` was reflected as `3 Gram` instead of `46,224 Gram`.

Root cause: PR customize took purchase UOM from item master instead of applying the correct standard/conversion UOM logic, causing PR to store `he_so = 1`. Downstream PO, PD1 and PND inherited the incorrect factor.
