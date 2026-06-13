# User Guide Template

Bộ template này được rút ra từ tài liệu mẫu `HDSD-Administrator-FBO.docx` trong `ba_artifacts/documents/sample-doc/`.

## Mục đích

Dùng để tạo các tài liệu hướng dẫn sử dụng theo phong cách tài liệu FAST/FBO: có trang bìa, mục lục, mô tả chức năng, đường dẫn menu, thao tác chi tiết, lưu ý và trường hợp sử dụng.

## File trong bộ template

| File | Mục đích |
| --- | --- |
| `00-document-template.md` | Template chính để tạo tài liệu mới |
| `section-file-list.md` | Danh sách section nên tách khi viết tài liệu lớn |
| `writing-rules.md` | Quy tắc giọng văn, thuật ngữ và cách mô tả thao tác |
| `section-map.md` | Mapping từ tài liệu mẫu sang template chuẩn |
| `review-checklist.md` | Checklist kiểm tra trước khi đưa sang final |
| `generation-workflow.md` | Quy trình generate từ file `.docx` thô, gồm trích text, trích ảnh và gắn ảnh vào draft |

## Cách dùng nhanh

1. Copy `00-document-template.md` sang `ba_artifacts/documents/working-doc/<document-name>/draft.md`.
2. Thay các placeholder dạng `<...>` bằng nội dung thực tế.
3. Bổ sung ảnh vào `ba_artifacts/documents/_shared-assets/<document-name>/images/`.
4. Review bằng `review-checklist.md`.
5. Chuyển bản hoàn thiện sang `ba_artifacts/documents/final-doc/<document-name>/`.
6. Hỏi người dùng trước khi tập hợp bộ tài liệu vào `ba_artifacts/documents/final-doc/<document-name>/_complete-package/v<version>/`.

Nếu đầu vào là file `.docx` thô, dùng `generation-workflow.md` thay cho cách copy template thủ công.

## Quy trình chuẩn khuyến nghị

Với tài liệu `.docx` viết tay chưa chuẩn hóa, dùng quy trình end-to-end trong `generation-workflow.md`:

1. Đặt file nguồn vào `incoming-doc/`.
2. Trích text và ảnh.
3. Generate `working-doc/<document-name>/draft.md`.
4. Tạo `open-questions.md`, `assumptions.md`, `review-notes.md`.
5. Sau khi được yêu cầu hoặc đã review, tạo final Markdown trong `final-doc/<document-name>/`.
6. Export bản Word `.docx` từ final Markdown.
7. Hỏi người dùng trước khi đóng gói bộ tài liệu hoàn chỉnh.
8. Nếu người dùng đồng ý, copy source, template, working files, assets và final files vào `final-doc/<document-name>/_complete-package/v<version>/`.
9. Kiểm tra `_complete-package/` có đủ `source/`, `template/`, `working/`, `assets/images/`, `final/` và `manifest.md`.
10. Chỉ sau khi kiểm tra đủ dữ liệu, hỏi người dùng có muốn xóa các file làm việc cũ không.
