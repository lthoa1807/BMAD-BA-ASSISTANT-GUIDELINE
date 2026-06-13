# Review Checklist

Dùng checklist này trước khi chuyển tài liệu từ `working-doc/` sang `final-doc/`.

## Nội dung

- [ ] Tên hệ thống, tên tài liệu, đối tượng sử dụng đã đúng.
- [ ] Mỗi chức năng có `Mô tả` rõ ràng.
- [ ] Mỗi chức năng có `Đường dẫn` đúng với menu hệ thống.
- [ ] Các bước trong `Thao tác` có thể thực hiện tuần tự trên hệ thống.
- [ ] Các trường cần nhập đã được mô tả đủ ý nghĩa và điều kiện bắt buộc.
- [ ] Các lưu ý quan trọng về quyền, dữ liệu, cấu hình đã được ghi rõ.
- [ ] Use case/tình huống áp dụng có mô tả vấn đề và cách xử lý cụ thể.

## Format

- [ ] Tiêu đề chính và tiêu đề nhóm chức năng nhất quán.
- [ ] Đường dẫn menu dùng cùng một kiểu phân tách trong toàn tài liệu.
- [ ] Danh sách bước thao tác dùng số thứ tự.
- [ ] Danh sách thông tin bổ sung dùng bullet hoặc bảng, không trộn lẫn lộn.
- [ ] Không còn placeholder dạng `<...>`.
- [ ] Không còn ký tự dư hoặc đoạn text lỗi encoding.

## Hình ảnh

- [ ] Ảnh minh họa đặt đúng vị trí thao tác.
- [ ] Tên ảnh rõ nghĩa và không dấu.
- [ ] Link ảnh trong Markdown hoạt động.
- [ ] Ảnh không chứa thông tin nhạy cảm hoặc dữ liệu thật không được phép chia sẻ.
- [ ] Không còn ảnh trích xuất nhưng chưa được gắn vào `draft.md`, trừ khi đã ghi rõ lý do trong `review-notes.md`.
- [ ] Các ảnh chưa chắc vị trí đã được đánh dấu để người review xác nhận.

## Chất lượng trước khi final

- [ ] Tài liệu có version và ngày cập nhật.
- [ ] Mục lục khớp với heading thực tế.
- [ ] Người review nghiệp vụ đã xác nhận các bước chính.
- [ ] Các câu hỏi mở quan trọng đã được xử lý hoặc ghi rõ trong release note.
- [ ] File final được lưu đúng thư mục `final-doc/<document-name>/`.

## Đóng gói tài liệu

- [ ] Đã hỏi người dùng trước khi đóng gói.
- [ ] Folder `_complete-package/v<version>/` nằm trong `final-doc/<document-name>/`.
- [ ] `_complete-package/` có folder `source/` chứa file đầu vào `.docx` nếu còn tồn tại.
- [ ] `_complete-package/` có template và quy tắc viết đã dùng.
- [ ] `_complete-package/` có `draft.md`, `open-questions.md`, `assumptions.md`, `review-notes.md` nếu có.
- [ ] `_complete-package/` có toàn bộ ảnh đã trích xuất.
- [ ] `_complete-package/` có final Markdown, Word và `changelog.md`.
- [ ] `_complete-package/` có `manifest.md`.

## Dọn dẹp sau đóng gói

- [ ] Đã kiểm tra `_complete-package/` đầy đủ trước khi hỏi dọn dẹp.
- [ ] Đã hỏi người dùng trước khi xóa dữ liệu làm việc cũ.
- [ ] Chỉ xóa dữ liệu của đúng tài liệu hiện tại.
- [ ] Không xóa template dùng chung.
- [ ] Không xóa `final-doc/<document-name>/`.
