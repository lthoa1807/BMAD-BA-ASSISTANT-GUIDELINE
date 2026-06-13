# Investigation Report: Sai Quy Đổi ĐVT Cho Mã ING-LIQ-000035

## 1. Summary

| Field | Value |
| --- | --- |
| Issue ID | ISSUE-001 |
| Workflow | BA Issue Check |
| Status | Closed - Root Cause Confirmed |
| Closed date | 2026-05-25 |
| Item code | ING-LIQ-000035 |
| Base UOM | Gram |
| Purchase/input UOM | Box |
| Correct conversion | 1 Box = 15,408 Gram |
| Observed wrong result | 3 Box was reflected as 3 Gram |
| Expected result | 3 Box x 15,408 = 46,224 Gram |

## 2. Symptom

Trên báo cáo tồn kho và các phát sinh kho liên quan, chứng từ nhập `3 Box` cho mã `ING-LIQ-000035` được phản ánh thành `3 Gram` thay vì `46,224 Gram`.

Sai lệch xuất hiện ở cả kho thực tế và kho sổ sách/kế toán.

## 3. Business Flow Reviewed

```text
PR -> PO -> Goods Receipt / PD1 -> Phiếu nhập kho kế toán / PND -> Báo cáo tồn kho
```

## 4. Evidence Summary

### EVD-001: Danh mục quy đổi ĐVT

Bảng: `dmqddvt`

| Field | Value |
| --- | --- |
| `ma_vt` | ING-LIQ-000035 |
| `dvt` | Box |
| `he_so` | 15408.0000 |
| `xtype` | U |
| `status` | 1 |
| `datetime0` | 2026-03-18 13:21:27.023 |
| `datetime2` | 2026-03-18 13:21:27.023 |
| `user_id0` | 20 |
| `user_id2` | 20 |

Mapping `Box -> Gram` đã tồn tại và active trước thời điểm tạo PR tháng 05/2026.

### EVD-002: PR nguồn

| Field | Value |
| --- | --- |
| `stt_rec` | A000095632PR1 |
| `stt_rec0` | 010 |
| `ma_ct` | PR1 |
| `so_ct` | PR2605-0006 |
| `ngay_ct` | 2026-05-03 |
| `ma_vt` | ING-LIQ-000035 |
| `dvt` | Box |
| `so_luong` | 3.0000 |
| `he_so` | 1.0000 |
| `datetime3` | 2026-05-04 01:58:48.560 |
| `user_id3` | 54 |

PR là điểm đầu tiên quan sát được trong chuỗi chứng từ có `dvt = Box` nhưng `he_so = 1`.

### EVD-003: PO kế thừa từ PR

| Field | Value |
| --- | --- |
| `stt_rec` | A000095779PO1 |
| `stt_rec0` | 010 |
| `ma_ct` | PO1 |
| `so_ct` | DPO2605-010 |
| `ngay_ct` | 2026-05-04 |
| `ma_vt` | ING-LIQ-000035 |
| `dvt` | Box |
| `so_luong` | 3.0000 |
| `he_so` | 1.0000 |
| `stt_rec_ttmh` | A000095632PR1 |
| `stt_rec0ttmh` | 010 |

PO kế thừa hệ số sai từ PR.

### EVD-004: Kho thực tế / PD1

| Field | Value |
| --- | --- |
| `stt_rec` | A000097174PD1 |
| `stt_rec0` | 010 |
| `ma_ct` | PD1 |
| `so_ct` | PNM2605-0031 |
| `ngay_ct` | 2026-05-06 |
| `ma_vt` | ING-LIQ-000035 |
| `dvt1` | Box |
| `sl_nhap1` | 3.0000 |
| `he_so1` | 1.000 |
| `sl_nhap` | 3.0000 |
| `datetime0` | 2026-05-06 19:15:50.370 |
| `datetime2` | 2026-05-06 19:15:50.370 |

Kho thực tế ghi nhận sai vì hệ số đã là `1`, dẫn đến `sl_nhap = 3`.

### EVD-005: Kho sổ sách / PND

| Field | Value |
| --- | --- |
| `stt_rec` | A000097174PND |
| `stt_rec0` | 010 |
| `ma_ct` | PND |
| `so_ct` | NMN-265-083 |
| `ngay_ct` | 2026-05-06 |
| `ma_vt` | ING-LIQ-000035 |
| `dvt1` | Box |
| `sl_nhap1` | 3.0000 |
| `he_so1` | 1.000 |
| `sl_nhap` | 3.0000 |
| `datetime0` | 2026-05-06 19:15:50.477 |
| `datetime2` | 2026-05-06 19:15:50.477 |

Kho sổ sách/kế toán phản ánh tiếp dữ liệu sai từ luồng chứng từ trước đó.

## 5. Expected vs Actual

| Step | Expected | Actual |
| --- | --- | --- |
| UOM conversion | `Box = 15408 Gram` | `Box = 15408 Gram` trong `dmqddvt` |
| PR | `dvt = Box`, `he_so = 15408` | `dvt = Box`, `he_so = 1` |
| PO | `dvt = Box`, `he_so = 15408` | `dvt = Box`, `he_so = 1` |
| PD1 | `sl_nhap1 = 3`, `he_so1 = 15408`, `sl_nhap = 46224` | `sl_nhap1 = 3`, `he_so1 = 1`, `sl_nhap = 3` |
| PND | `sl_nhap1 = 3`, `he_so1 = 15408`, `sl_nhap = 46224` | `sl_nhap1 = 3`, `he_so1 = 1`, `sl_nhap = 3` |

## 6. Root Cause

`CAUSE-001`: Lỗi phát sinh tại chứng từ PR do một chức năng customize của dự án xử lý lấy ĐVT mua hàng trong danh mục hàng hóa vật tư thay vì lấy ĐVT chuẩn/quy đổi đúng khi nhập liệu.

Kết quả là PR lưu sai snapshot hệ số:

```text
dvt = Box
he_so = 1
```

Trong khi cấu hình đúng đã tồn tại trong `dmqddvt`:

```text
ma_vt = ING-LIQ-000035
dvt = Box
he_so = 15408
status = 1
```

Hệ số sai tại PR được kế thừa xuống PO, PD1, PND và làm tồn kho ghi nhận `3 Gram` thay vì `46,224 Gram`.

## 7. Cause Classification

| Cause ID | Description | Status | Confidence |
| --- | --- | --- | --- |
| CAUSE-001 | Customize tại PR lấy sai nguồn ĐVT/hệ số, làm PR lưu `he_so = 1` | Confirmed | High |
| CAUSE-002 | PO, PD1, PND kế thừa sai từ PR | Confirmed | High |
| HYP-001 | Báo cáo tồn kho không quy đổi số lượng | Rejected | Báo cáo phản ánh dữ liệu kho đã sai |
| HYP-010 | Mapping UOM thiếu hoặc inactive | Rejected | `dmqddvt` có record active từ 2026-03-18 |

## 8. Impact

| Area | Impact |
| --- | --- |
| Tồn kho thực tế | Ghi nhận thiếu số lượng gốc: `3` thay vì `46,224` Gram |
| Tồn kho kế toán | Ghi nhận thiếu số lượng gốc: `3` thay vì `46,224` Gram |
| Báo cáo tồn kho | Hiển thị sai do đọc dữ liệu đã post sai |
| Chuỗi mua hàng | PO, GR/PD1, PND kế thừa hệ số sai từ PR |

## 9. Recommended Actions

| Action ID | Owner | Recommendation |
| --- | --- | --- |
| ACT-001 | Dev/customize owner | Sửa logic customize tại PR để lấy đúng hệ số theo `ma_vt + dvt` từ cấu hình quy đổi hợp lệ, thay vì mặc định theo ĐVT mua hàng trong danh mục vật tư. |
| ACT-002 | DBA/functional owner | Xác định phương án xử lý dữ liệu đã post: hủy/lập lại chứng từ, repost, hoặc script điều chỉnh được phê duyệt. |
| ACT-003 | BA/QA | Thêm regression test cho item có ĐVT mua khác ĐVT gốc. |
| ACT-004 | Dev/QA | Thêm kiểm soát nếu `dvt` khác ĐVT gốc nhưng `he_so = 1`, hệ thống phải cảnh báo hoặc chặn lưu nếu không có lý do hợp lệ. |

## 10. Closure

Yêu cầu kiểm tra được đóng với trạng thái `Closed - Root Cause Confirmed`.

Nguyên nhân đã được xác nhận bởi phân tích data-flow và xác nhận của người dùng: lỗi nằm ở customize của PR, không nằm ở báo cáo tồn kho.
