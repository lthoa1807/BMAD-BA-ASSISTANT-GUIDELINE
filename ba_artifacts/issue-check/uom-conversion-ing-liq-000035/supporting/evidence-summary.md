# Evidence Summary: UOM Conversion Issue ING-LIQ-000035

## Issue

Mã hàng `ING-LIQ-000035` có ĐVT gốc `Gram`, ĐVT nhập/mua `Box`, hệ số đúng `1 Box = 15,408 Gram`. Chứng từ nhập `3 Box` bị ghi nhận tồn kho thành `3 Gram` thay vì `46,224 Gram`.

## Data Flow Evidence

| Step | Document/Table | Key | UOM | Qty | Factor | Base/Stock Qty | Finding |
| --- | --- | --- | --- | ---: | ---: | ---: | --- |
| Master conversion | `dmqddvt` | `ING-LIQ-000035` | Box | N/A | 15408 | N/A | Mapping đúng, active, có trước PR |
| PR | `PR2605-0006` | `A000095632PR1/010` | Box | 3 | 1 | N/A | Điểm sai đầu tiên |
| PO | `DPO2605-010` | `A000095779PO1/010` | Box | 3 | 1 | N/A | Kế thừa từ PR |
| Physical stock | `PNM2605-0031` / `PD1` | `A000097174PD1/010` | Box | 3 | 1 | 3 | Sai ở kho thực tế |
| Accounting stock | `NMN-265-083` / `PND` | `A000097174PND/010` | Box | 3 | 1 | 3 | Sai ở kho sổ sách |

## Confirmed Root Cause

Chức năng customize tại PR lấy ĐVT mua hàng trong danh mục hàng hóa vật tư thay vì lấy ĐVT chuẩn/quy đổi đúng khi nhập liệu. Vì vậy PR lưu `he_so = 1`, sau đó PO, PD1 và PND kế thừa hệ số sai.

## Closure Status

Closed - Root Cause Confirmed.
