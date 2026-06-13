# Document Artifacts

Thư mục này quản lý toàn bộ vòng đời tạo tài liệu hướng dẫn: từ tài liệu mẫu, template được rút ra, bản nháp đang viết, đến bản final đã sẵn sàng chia sẻ.

Nếu cần trả lời người dùng về khả năng hỗ trợ tạo tài liệu, dùng `document-creation-support-guide.md` làm playbook phản hồi và xử lý.

## Cấu trúc

| Folder | Mục đích | Nội dung nên lưu |
| --- | --- | --- |
| `sample-doc/` | Tài liệu mẫu do người dùng cung cấp | File Word, PDF, Markdown, ảnh chụp màn hình của tài liệu mẫu |
| `incoming-doc/` | File tài liệu thô cần chuẩn hóa | File `.docx` đầu vào do người dùng cung cấp |
| `template-doc/` | Template và quy tắc viết được tạo từ tài liệu mẫu | Template Markdown, skeleton, writing guide, checklist |
| `working-doc/` | Bản nháp tài liệu đang soạn | Draft theo từng tài liệu hoặc từng phiên bản |
| `final-doc/` | Bản hoàn thiện và bộ hồ sơ tổng hợp | Markdown final, DOCX/PDF export, changelog, `_complete-package/` |
| `_shared-assets/` | Tài nguyên dùng chung | Logo, ảnh minh họa, screenshot, diagram, file đính kèm |
| `_archive/` | Bản cũ hoặc nội dung không còn dùng | Template cũ, bản final đã thay thế, draft bỏ |

## Tài liệu hướng dẫn quy trình

| File | Mục đích |
| --- | --- |
| `document-creation-support-guide.md` | Hướng dẫn cách trả lời và xử lý khi người dùng hỏi về hỗ trợ tạo tài liệu |
| `template-doc/user-guide/generation-workflow.md` | Quy trình chi tiết để generate tài liệu từ file `.docx` thô theo template `user-guide` |

## Quy trình sử dụng

1. Đặt tài liệu mẫu vào `sample-doc/`.
2. Rút cấu trúc, giọng văn, quy tắc trình bày và lưu vào `template-doc/`.
3. Nếu có file `.docx` thô cần chuẩn hóa, đặt file vào `incoming-doc/`.
4. Trích nội dung và hình ảnh từ file thô, lưu hình ảnh vào `_shared-assets/<document-name>/images/`.
5. Generate bản nháp trong `working-doc/<document-name>/draft.md` theo template đã thống nhất và gắn hình đúng vị trí phù hợp.
6. Sau khi review xong, chuyển bản hoàn thiện sang `final-doc/`.
7. Export Word/PDF nếu cần.
8. Hỏi người dùng trước khi đóng gói bộ tài liệu hoàn chỉnh.
9. Nếu người dùng đồng ý, tổng hợp source, template, draft, review hồ sơ, ảnh và final vào `final-doc/<document-name>/_complete-package/v<version>/`.
10. Chuyển bản cũ sang `_archive/` thay vì xóa.

## Quy ước đặt tên

Khuyến nghị dùng dạng:

```text
<system-or-domain>-<document-purpose>-v<major.minor>-<yyyy-mm-dd>.<ext>
```

Ví dụ:

```text
fbo-user-guide-v1.0-2026-05-23.md
fa-report-guide-v0.2-2026-05-23.docx
```

## Nguyên tắc

- Không sửa trực tiếp file mẫu trong `sample-doc/`.
- Không lưu draft trong `final-doc/`.
- Mỗi tài liệu final nên có version và ngày phát hành.
- Nếu tài liệu có nhiều ảnh, tạo folder con cùng tên tài liệu trong `_shared-assets/`.
- File nguồn trong `incoming-doc/` chỉ dùng làm đầu vào, không chỉnh sửa trực tiếp.
- Không tạo `_complete-package/` trong `final-doc/` nếu chưa hỏi và được người dùng xác nhận.
