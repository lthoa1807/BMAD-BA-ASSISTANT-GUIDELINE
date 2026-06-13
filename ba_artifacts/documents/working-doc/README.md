# Working Documents

Lưu các bản nháp tài liệu đang soạn dựa trên template trong `template-doc/`.

File tài liệu thô chưa chuẩn hóa đặt ở `../incoming-doc/`. Thư mục này chỉ chứa draft và hồ sơ làm việc đã được generate theo từng tài liệu.

## Nên lưu tại đây

- Bản nháp lần đầu.
- Bản đang review nội bộ.
- Bản cần bổ sung ảnh, dữ liệu, hoặc xác nhận nghiệp vụ.

## Gợi ý tổ chức

```text
working-doc/
  <document-name>/
    draft.md
    sections/
    open-questions.md
    assumptions.md
    review-notes.md
```

Ví dụ:

```text
working-doc/
  fbo-user-guide/
    draft.md
    open-questions.md
```

## Quy trình generate từ file `.docx` thô

1. Đặt file nguồn vào `incoming-doc/`.
2. Trích nội dung text từ file nguồn.
3. Trích xuất hình ảnh từ file nguồn vào `_shared-assets/<document-name>/images/`.
4. Chuẩn hóa nội dung theo template `template-doc/user-guide/00-document-template.md`.
5. Gắn hình ảnh đã trích xuất vào đúng section/chức năng trong `draft.md`.
6. Ghi các điểm cần xác nhận vào `open-questions.md` hoặc `review-notes.md`.

## Điều kiện chuyển sang `final-doc/`

- Nội dung đã được review.
- Câu hỏi mở quan trọng đã được xử lý hoặc ghi nhận rõ.
- Ảnh, link, bảng biểu và phụ lục đã kiểm tra.
- Version và ngày phát hành đã được cập nhật.
