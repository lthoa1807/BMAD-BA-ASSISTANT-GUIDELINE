# Section Map

Mapping từ tài liệu mẫu `HDSD-Administrator-FBO.docx` sang template chuẩn.

## Metadata tài liệu mẫu

| Thuộc tính | Giá trị nhận diện |
| --- | --- |
| Tên tài liệu | HƯỚNG DẪN SỬ DỤNG FAST BUSINESS ONLINE |
| Đối tượng | Quản trị viên |
| Thời gian | Tháng 4, 2025 |
| Hệ thống | FAST BUSINESS ONLINE / FBO |
| Dạng tài liệu | Hướng dẫn sử dụng theo chức năng quản trị |

## Mapping cấu trúc

| Trong tài liệu mẫu | Trong template chuẩn | Ghi chú |
| --- | --- | --- |
| Trang bìa | Cover/metadata | Giữ tên hệ thống, đối tượng, tháng/năm, công ty |
| MỤC LỤC TÀI LIỆU | Mục lục | Có thể tự cập nhật sau khi final |
| KHAI BÁO & PHÂN QUYỀN NGƯỜI SỬ DỤNG | Nhóm chức năng chính | Dùng làm heading cấp 2 |
| Thêm mới người sử dụng | Chức năng con | Dùng cấu trúc Mô tả, Đường dẫn, Thao tác |
| Quản lý nhóm người sử dụng | Chức năng con | Có bảng trường khai báo nếu nhiều thông tin cần nhập |
| Phân quyền | Chức năng/tổng quan nhóm | Có thể tách thành các chức năng con theo từng loại phân quyền |
| Phân quyền truy cập theo đơn vị cơ sở | Chức năng con | Nên có điều kiện và lưu ý quyền |
| Phân quyền chức năng cho user | Chức năng con | Nên có kết quả mong đợi |
| Phân quyền chức năng cho nhóm người sử dụng | Chức năng con | Nêu rõ cơ chế kế thừa quyền |
| Giới hạn quyền | Chức năng con | Nêu rõ khác biệt giữa cấp quyền và giới hạn quyền |
| Tổng hợp quyền của user | Giải thích nghiệp vụ | Có thể là mục `Nguyên tắc hoạt động` |
| Một số chức năng phân quyền nâng cao | Nhóm chức năng phụ | Tách từng chức năng nâng cao thành section riêng |
| Uses cases phân quyền | Use case/tình huống áp dụng | Chuẩn hóa thành `USE CASE / TÌNH HUỐNG ÁP DỤNG` |
| QUYỂN CHỨNG TỪ | Nhóm chức năng chính | Dùng heading cấp 2 |
| Setup xuất kho tự động | Nhóm chức năng hoặc chức năng con | Nếu nội dung lớn, tách thành nhóm riêng |

## Pattern section chuẩn rút ra

```text
<Tên chức năng>
Mô tả: <chức năng dùng để làm gì>
Đường dẫn: <menu hệ thống>
Thao tác:
  <các bước thực hiện>
Lưu ý:
  <ràng buộc, ngoại lệ, điểm dễ sót>
```

## Gợi ý cải tiến so với mẫu gốc

- Bổ sung `Kết quả mong đợi` sau thao tác để người dùng biết khi nào hoàn tất đúng.
- Bổ sung bảng `Thông tin cần khai báo` cho các màn hình có nhiều trường.
- Chuẩn hóa `Use cases` thành `Tình huống áp dụng`.
- Tách `Điều kiện thực hiện` khỏi `Lưu ý` nếu chức năng phụ thuộc quyền, cấu hình hoặc dữ liệu.
