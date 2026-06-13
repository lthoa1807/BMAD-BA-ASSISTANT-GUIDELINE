# Section File List

Khi tài liệu dài, nên tách từng phần thành file riêng trong `working-doc/<document-name>/sections/` để dễ review.

## Cấu trúc đề xuất

```text
working-doc/<document-name>/
  draft.md
  sections/
    00-cover.md
    01-table-of-contents.md
    02-overview.md
    03-main-function-group-01.md
    04-main-function-group-02.md
    05-use-cases.md
    06-common-errors.md
    07-change-history.md
  open-questions.md
  assumptions.md
  review-notes.md
```

## Mô tả từng section

| File | Nội dung |
| --- | --- |
| `00-cover.md` | Trang bìa, tên hệ thống, đối tượng sử dụng, tháng/năm, đơn vị phát hành |
| `01-table-of-contents.md` | Mục lục tài liệu |
| `02-overview.md` | Mục đích, phạm vi, đối tượng, điều kiện sử dụng nếu cần |
| `03-main-function-group-01.md` | Nhóm chức năng chính đầu tiên, gồm các chức năng con |
| `04-main-function-group-02.md` | Nhóm chức năng chính tiếp theo |
| `05-use-cases.md` | Tình huống áp dụng thực tế, kết hợp nhiều chức năng |
| `06-common-errors.md` | Lỗi thường gặp và cách xử lý |
| `07-change-history.md` | Lịch sử thay đổi tài liệu |

## Mẫu section chức năng

Mỗi chức năng con nên dùng cùng cấu trúc:

```md
### <Số thứ tự> <Tên chức năng>

**Mô tả:** <...>

**Đường dẫn:** `<...>`

**Thao tác:**

1. <...>
2. <...>
3. <...>

**Thông tin cần khai báo:**

| Trường thông tin | Cách nhập/ý nghĩa | Bắt buộc | Lưu ý |
| --- | --- | --- | --- |

**Kết quả mong đợi:** <...>

**Lưu ý:**

- <...>
```
