# Incoming Documents

Thư mục này dùng để nhận file tài liệu đầu vào chưa chuẩn hóa.

## Mục đích

Tách rõ file đầu vào khỏi khu vực soạn nháp. File trong thư mục này là nguồn để generate tài liệu theo template, không phải bản draft đang viết.

## Nên đặt tại đây

- File `.docx` do người dùng viết tay nhưng chưa chuẩn hóa format.
- File có nội dung hướng dẫn, ảnh minh họa, screenshot hoặc ghi chú thao tác.

## Quy trình xử lý

1. Đọc nội dung từ file `.docx` trong `incoming-doc/`.
2. Trích xuất toàn bộ hình ảnh trong file nguồn.
3. Lưu hình ảnh vào `ba_artifacts/documents/_shared-assets/<document-name>/images/` trong giai đoạn làm việc.
4. Generate tài liệu nháp tại `ba_artifacts/documents/working-doc/<document-name>/draft.md` theo template `user-guide`.
5. Đính kèm hình ảnh đã trích xuất vào đúng vị trí phù hợp trong file `draft.md`.
6. Khi final xong, tập hợp đầy đủ file vào `final-doc/<document-name>/_complete-package/v<version>/` trước khi dọn dẹp.

## Quy ước đặt tên file nguồn

Khuyến nghị dùng dạng:

```text
<system-or-domain>-<document-purpose>-raw-<yyyy-mm-dd>.docx
```

Ví dụ:

```text
fbo-permission-guide-raw-2026-05-24.docx
```

## Lưu ý

- Không sửa trực tiếp file nguồn trong `incoming-doc/`.
- Nếu file nguồn có ảnh chứa dữ liệu nhạy cảm, cần review trước khi đưa vào bản final.
- Sau khi `_complete-package/` đã đủ dữ liệu và người dùng xác nhận, có thể xóa file đầu vào khỏi `incoming-doc/`.
