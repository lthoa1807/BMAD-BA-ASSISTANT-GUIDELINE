# Complete Package Manifest

## Thông tin package

| Thuộc tính | Giá trị |
| --- | --- |
| Tên tài liệu | Hướng dẫn tạo tài khoản và phân quyền người sử dụng Fast e-Invoice |
| Document name | `fast-einvoice-account-guide` |
| Phiên bản bộ hồ sơ | `v0.1` |
| Ngày tập hợp | 2026-05-24 |
| Trạng thái | Collected under final-doc from generated final v0.1 |

## Nguồn đầu vào

| Loại | Đường dẫn trong package | Đường dẫn gốc |
| --- | --- | --- |
| File Word nguồn | `source/Huong dan tao tai khoan fast einvoice.docx` | `ba_artifacts/documents/incoming-doc/Huong dan tao tai khoan fast einvoice.docx` |

## Template và quy tắc đã dùng

| File | Mục đích |
| --- | --- |
| `template/00-document-template.md` | Template user-guide chính |
| `template/writing-rules.md` | Quy tắc giọng văn và cách viết thao tác |
| `template/review-checklist.md` | Checklist review/final/package |
| `template/generation-workflow.md` | Quy trình generate end-to-end |
| `template/section-map.md` | Mapping từ tài liệu mẫu sang template chuẩn |
| `template/section-file-list.md` | Gợi ý tách section khi tài liệu lớn |
| `template/README.md` | Hướng dẫn sử dụng bộ template |

## Working files

| File | Mục đích |
| --- | --- |
| `working/draft.md` | Bản draft đã chuẩn hóa theo template user-guide |
| `working/open-questions.md` | Các câu hỏi cần xác nhận |
| `working/assumptions.md` | Các giả định khi chuẩn hóa nội dung |
| `working/review-notes.md` | Ghi chú xử lý, trích xuất và review |

## Assets

| Loại | Đường dẫn | Số lượng |
| --- | --- | --- |
| Hình ảnh trích xuất | `assets/images/` | 6 |

## Final files

| File | Mục đích |
| --- | --- |
| `final/fast-einvoice-account-guide-v0.1.md` | Bản final Markdown |
| `final/fast-einvoice-account-guide-v0.1.docx` | Bản Word export |
| `final/changelog.md` | Lịch sử thay đổi |

## Câu hỏi mở còn tồn tại

- Xác nhận tên chính thức của sản phẩm: `Fast e-Invoice`, `Fast e-invoice` hay cách viết khác.
- Xác nhận quyền `User kế toán` và `Phát hành KT` có phải là hai quyền bắt buộc cho mọi user phát hành hóa đơn không.
- Xác nhận đơn vị `CTY` là giá trị mặc định hay chỉ là ví dụ trong tài liệu nguồn.

## Cách tiếp tục chỉnh sửa từ bộ hồ sơ

1. Dùng `working/draft.md` làm điểm bắt đầu nếu cần chỉnh sửa nội dung.
2. Dùng `assets/images/` để giữ nguyên ảnh đã trích xuất.
3. Kiểm tra `working/open-questions.md` trước khi tạo version mới.
4. Sau khi chỉnh sửa, tạo version mới trong `final/`, ví dụ `v0.2` hoặc `v1.0` nếu đã được duyệt.

## Ghi chú

- `_complete-package/` là bản sao lưu đầy đủ tại thời điểm tập hợp, không thay thế các folder làm việc chính trong `working-doc/`, `_shared-assets/` và `final-doc/`.
- Chỉ xóa dữ liệu gốc ở các thư mục làm việc sau khi đã kiểm tra package đầy đủ và được người dùng xác nhận rõ ràng.
