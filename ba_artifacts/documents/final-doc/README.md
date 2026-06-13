# Final Documents

Lưu bản tài liệu hoàn thiện, đã review và sẵn sàng chia sẻ hoặc phát hành.

## Nên lưu tại đây

- Bản Markdown final.
- Bản export `.docx` hoặc `.pdf` nếu có.
- Release notes hoặc changelog của tài liệu.

## Gợi ý tổ chức

```text
final-doc/
  <document-name>/
    <document-name>-v1.0.md
    <document-name>-v1.0.pdf
    changelog.md
```

Ví dụ:

```text
final-doc/
  fbo-user-guide/
    fbo-user-guide-v1.0.md
    changelog.md
```

## Nguyên tắc

- Không lưu bản nháp tại đây.
- Không ghi đè bản final cũ nếu đã phát hành; tạo version mới.
- Nếu bản final bị thay thế, chuyển bản cũ sang `_archive/` hoặc giữ lại kèm version rõ ràng.
