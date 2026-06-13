# Writing Rules

Quy tắc này được rút ra từ tài liệu mẫu `HDSD-Administrator-FBO.docx`.

## Giọng văn

- Viết trực tiếp, thực dụng, tập trung vào thao tác người dùng cần làm.
- Ưu tiên câu ngắn, rõ hành động.
- Mỗi chức năng bắt đầu bằng `Mô tả`, sau đó đến `Đường dẫn`, rồi `Thao tác`.
- Dùng `Lưu ý` để ghi ràng buộc, ngoại lệ, điều kiện quyền hoặc điểm dễ bị sót.

## Cách đặt tiêu đề

- Tiêu đề tài liệu viết hoa: `HƯỚNG DẪN SỬ DỤNG <TÊN HỆ THỐNG>`.
- Nhóm chức năng chính viết hoa, ví dụ: `KHAI BÁO & PHÂN QUYỀN NGƯỜI SỬ DỤNG`.
- Chức năng con viết dạng câu ngắn, ví dụ: `Thêm mới người sử dụng`.
- Use case/tình huống nên đặt tên theo vấn đề thực tế người dùng gặp.

## Cách mô tả đường dẫn

- Dùng một kiểu nhất quán trong mỗi tài liệu.
- Khuyến nghị dùng dấu `/`: `Hệ thống / Người sử dụng / Khai báo người sử dụng`.
- Nếu lấy nguyên văn từ hệ thống dùng dấu `|`, giữ nguyên nhưng không trộn lẫn trong cùng một section.

## Cách viết thao tác

- Dùng danh sách đánh số cho các bước tuần tự.
- Bắt đầu bước bằng động từ: `Truy cập`, `Chọn`, `Nhập`, `Check chọn`, `Nhấn`, `Lưu`, `Kiểm tra`.
- Nếu thao tác gắn với nút trên màn hình, viết tên nút đúng như giao diện.
- Nếu bước có nhiều trường cần nhập, đưa vào bảng `Thông tin cần khai báo`.

## Cách viết lưu ý

- Dùng `Lưu ý` cho thông tin có thể ảnh hưởng kết quả thao tác.
- Không trộn lưu ý vào phần thao tác nếu lưu ý không phải là một bước thực hiện.
- Các lỗi dễ sót nên viết rõ, ví dụ: `Click vào tên user bất kỳ để hoàn thành bước chọn user`.

## Thuật ngữ nên giữ nhất quán

| Thuật ngữ | Cách dùng khuyến nghị |
| --- | --- |
| user | Có thể dùng khi giao diện hệ thống dùng từ `user` |
| người sử dụng | Dùng trong tiêu đề hoặc mô tả nghiệp vụ |
| phân quyền | Dùng cho thao tác cấp quyền |
| giới hạn quyền | Dùng cho thao tác hạn chế quyền đã cấp |
| đơn vị cơ sở | Giữ nguyên nếu là khái niệm hệ thống |
| chứng từ | Giữ nguyên theo nghiệp vụ kế toán |

## Quy tắc ảnh minh họa

- Đặt ảnh gần phần thao tác tương ứng.
- Tên ảnh nên dùng tiếng Anh không dấu hoặc mã chức năng, ví dụ: `user-create-step-01.png`.
- Lưu ảnh tại `_shared-assets/<document-name>/images/`.
- Mỗi ảnh cần có mô tả ngắn trong alt text.

## Lỗi chính tả/format cần tránh

- Tránh viết dính chữ: `bắt buộcphải` cần sửa thành `bắt buộc phải`.
- Thống nhất `Lưu` thay vì lúc dùng `Luu`.
- Thống nhất `mã` thay vì `ma` nếu không phải tên trường kỹ thuật.
- Không để ký tự dư như dấu backtick đơn lẻ nếu không phải code block.
