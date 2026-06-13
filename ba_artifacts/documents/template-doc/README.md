# Document Templates

Lưu template, skeleton và quy tắc viết được rút ra từ tài liệu mẫu trong `sample-doc/`.

## Nên lưu tại đây

- `template.md`: format tài liệu chuẩn có thể tái sử dụng.
- `writing-rules.md`: quy tắc giọng văn, cách đặt tiêu đề, cách mô tả bước thao tác.
- `section-map.md`: mapping giữa section trong tài liệu mẫu và section trong template mới.
- `review-checklist.md`: checklist trước khi đưa tài liệu sang final.

## Gợi ý tổ chức

```text
template-doc/
  <document-type>/
    template.md
    writing-rules.md
    section-map.md
    review-checklist.md
```

Ví dụ:

```text
template-doc/
  user-guide/
    template.md
    writing-rules.md
```

## Lưu ý

Template trong folder này là nguồn chuẩn để tạo tài liệu mới. Nếu cần thay đổi format, cập nhật template trước rồi mới tạo draft mới trong `working-doc/`.
