# User Guide Generation Workflow

Quy trình chuẩn dùng khi nhận một file `.docx` thô trong `incoming-doc/` và cần tạo lại thành tài liệu hướng dẫn theo template `user-guide`, gồm cả bản draft, final Markdown và Word export.

## Đầu vào

- File nguồn `.docx`: `ba_artifacts/documents/incoming-doc/<raw-file>.docx`
- Template chuẩn: `ba_artifacts/documents/template-doc/user-guide/00-document-template.md`
- Quy tắc viết: `ba_artifacts/documents/template-doc/user-guide/writing-rules.md`

## Đầu ra

```text
ba_artifacts/documents/working-doc/<document-name>/
  draft.md
  open-questions.md
  assumptions.md
  review-notes.md

ba_artifacts/documents/_shared-assets/<document-name>/images/
  image-001.<ext>
  image-002.<ext>

ba_artifacts/documents/final-doc/<document-name>/
  <document-name>-v0.1.md
  <document-name>-v0.1.docx
  changelog.md

ba_artifacts/documents/final-doc/<document-name>/
  _complete-package/
    v0.1/
    manifest.md
```

## Quy trình end-to-end

### 1. Nhận file nguồn

1. Đặt file `.docx` thô vào `ba_artifacts/documents/incoming-doc/`.
2. Không chỉnh sửa trực tiếp file nguồn.
3. Xác định `<document-name>` từ tên file hoặc nội dung trang bìa.

Ví dụ:

```text
Huong dan tao tai khoan fast einvoice.docx -> fast-einvoice-account-guide
```

### 2. Trích xuất nội dung và hình ảnh

1. Đọc file `.docx` theo cấu trúc Word OpenXML.
2. Trích xuất text theo thứ tự xuất hiện trong file nguồn.
3. Trích xuất toàn bộ ảnh từ `word/media/`.
4. Lưu ảnh vào `_shared-assets/<document-name>/images/`.
5. Đặt tên ảnh tuần tự: `image-001.png`, `image-002.png`, ...
6. Ghi nhận vị trí tương đối của ảnh theo đoạn text gần nhất để dùng khi gắn ảnh vào draft.

### 3. Generate draft theo template user-guide

1. Tạo thư mục `working-doc/<document-name>/`.
2. Phân nhóm nội dung theo cấu trúc template `user-guide`: tổng quan, nhóm chức năng, chức năng con, mô tả, đường dẫn, thao tác, thông tin cần khai báo, kết quả mong đợi, lưu ý, lỗi thường gặp.
3. Generate `draft.md` từ nội dung đã chuẩn hóa.
4. Gắn ảnh vào vị trí phù hợp nhất trong `draft.md` dựa trên thứ tự ảnh và đoạn text lân cận trong file nguồn.
5. Nếu không xác định chắc vị trí ảnh, đặt ảnh ở gần section liên quan nhất và ghi chú trong `review-notes.md`.

### 4. Tạo hồ sơ review

1. Tạo `open-questions.md` để ghi các điểm cần người dùng xác nhận.
2. Tạo `assumptions.md` để ghi các giả định khi chuẩn hóa nội dung.
3. Tạo `review-notes.md` để ghi nguồn xử lý, số đoạn text, số ảnh, điểm đã chuẩn hóa và điểm cần review.
4. Kiểm tra link ảnh trong `draft.md`.

### 5. Tạo final Markdown

1. Chỉ tạo final sau khi người dùng yêu cầu hoặc đã review đủ.
2. Copy nội dung đã chuẩn hóa từ `draft.md` sang `final-doc/<document-name>/<document-name>-v<version>.md`.
3. Tạo hoặc cập nhật `final-doc/<document-name>/changelog.md`.
4. Cập nhật `ba_artifacts/ba-worklog-index.md`.

### 6. Export Word

1. Ưu tiên dùng `pandoc` nếu môi trường có sẵn.
2. Nếu không có `pandoc`, kiểm tra LibreOffice `soffice`.
3. Nếu không có cả hai, tạo `.docx` trực tiếp bằng Word OpenXML.
4. Khi export Word, nhúng ảnh vào package `.docx`, không chỉ link ảnh ngoài.
5. Kiểm tra package `.docx` có `word/document.xml`, `word/_rels/document.xml.rels`, `[Content_Types].xml` và ảnh trong `word/media/`.

### 7. Hỏi trước khi đóng gói tài liệu

1. Sau khi export Word xong, hỏi người dùng có muốn tập hợp bộ tài liệu hoàn chỉnh vào thư mục final hay không.
2. Không tự thực hiện đóng gói nếu người dùng chưa đồng ý rõ ràng.
3. Câu hỏi đề xuất: `Bạn có muốn tôi tập hợp bộ tài liệu hoàn chỉnh vào final-doc/<document-name>/_complete-package/ để lưu trữ và chỉnh sửa về sau không?`

### 8. Đóng gói bộ tài liệu hoàn chỉnh

Chỉ thực hiện bước này khi người dùng đồng ý. Trong quy trình này, `đóng gói` nghĩa là tập hợp đầy đủ file liên quan vào một folder dưới `final-doc`, không tạo folder `package-doc` riêng.

1. Tạo folder `final-doc/<document-name>/_complete-package/v<version>/`.
2. Copy file nguồn `.docx` từ `incoming-doc/` vào `source/`.
3. Copy template và quy tắc đã dùng vào `template/`.
4. Copy bản draft và hồ sơ review từ `working-doc/<document-name>/` vào `working/`.
5. Copy hình ảnh đã trích xuất từ `_shared-assets/<document-name>/images/` vào `assets/images/`.
6. Copy bản final Markdown, Word và changelog từ `final-doc/<document-name>/` vào `final/`.
7. Tạo `manifest.md` để ghi đầy đủ nguồn, version, file liên quan, số lượng ảnh và ghi chú tiếp tục chỉnh sửa.
8. Không xóa dữ liệu gốc sau khi đóng gói nếu chưa qua bước kiểm tra và xác nhận dọn dẹp.

### 9. Kiểm tra bộ hồ sơ đã đóng gói

1. Kiểm tra thư mục final có đủ `.md`, `.docx`, `changelog.md`.
2. Kiểm tra số ảnh trong file final Markdown khớp với số ảnh trích xuất.
3. Kiểm tra link ảnh trong Markdown không bị thiếu.
4. Kiểm tra file `.docx` không đang bị mở bởi Word trước khi ghi đè hoặc kiểm tra package.
5. Nếu có `_complete-package/`, kiểm tra folder có đủ `source/`, `template/`, `working/`, `assets/images/`, `final/` và `manifest.md`.
6. Chỉ đánh dấu package hoàn chỉnh khi các nhóm dữ liệu bắt buộc đều có file.
7. Cập nhật worklog sau khi hoàn tất.

### 10. Hỏi trước khi dọn dẹp thư mục làm việc

1. Chỉ hỏi dọn dẹp sau khi kiểm tra `_complete-package/` đầy đủ.
2. Không tự xóa file ở `incoming-doc/`, `working-doc/` hoặc `_shared-assets/` nếu người dùng chưa xác nhận.
3. Câu hỏi đề xuất: `Bộ hồ sơ đã đủ dữ liệu trong final-doc/<document-name>/_complete-package/v<version>/. Bạn có muốn tôi xóa các file làm việc cũ ở incoming-doc, working-doc/<document-name> và _shared-assets/<document-name> không?`
4. Nếu người dùng đồng ý, chỉ xóa đúng dữ liệu của tài liệu hiện tại; không xóa template dùng chung và không xóa final-doc.

## Quy tắc gắn hình ảnh

- Ưu tiên giữ thứ tự ảnh theo thứ tự xuất hiện trong file nguồn.
- Ảnh nằm sau đoạn thao tác nào trong file nguồn thì gắn dưới đoạn thao tác tương ứng.
- Nếu ảnh minh họa một màn hình nhập liệu, gắn sau `Thông tin cần khai báo` hoặc sau bước thao tác mở màn hình đó.
- Nếu ảnh minh họa kết quả, gắn sau `Kết quả mong đợi`.
- Nếu ảnh chưa rõ ngữ cảnh, gắn vào cuối section gần nhất với ghi chú `Cần xác nhận vị trí ảnh` trong `review-notes.md`.

## Format ảnh trong Markdown

```md
![<Mô tả ảnh>](../../_shared-assets/<document-name>/images/image-001.png)
```

## Không được làm

- Không chỉnh sửa trực tiếp file nguồn trong `incoming-doc/`.
- Không bỏ ảnh nếu chưa có lý do rõ ràng.
- Không đưa tài liệu sang `final-doc/` khi còn ảnh hoặc section cần xác nhận.
- Không đóng gói bộ tài liệu nếu chưa hỏi và được người dùng xác nhận.
- Không tạo folder `package-doc` riêng; bộ hồ sơ tổng hợp phải nằm trong `final-doc/<document-name>/_complete-package/`.
- Không coi `_complete-package/` là nơi làm việc chính; đây là bản lưu trữ đầy đủ tại một thời điểm.
- Không xóa dữ liệu làm việc cũ nếu chưa kiểm tra package đầy đủ và chưa được người dùng xác nhận.

## Bài học từ tài liệu Fast e-Invoice

- Tên file nguồn có thể không phản ánh đủ phạm vi tài liệu; cần đọc nội dung để đặt lại tên tài liệu đúng hơn.
- Ảnh nên được map theo thứ tự xuất hiện trong file Word và đoạn text gần nhất.
- Bản draft cần có `open-questions.md`, vì file nguồn thường thiếu thông tin xác nhận như tên sản phẩm chính thức, quyền bắt buộc, giá trị ví dụ.
- Khi tạo Word bằng OpenXML, cần kiểm tra package sau khi tạo để chắc chắn Word mở được.
- Nếu file Word đang mở, PowerShell có thể không đọc/ghi được file do bị khóa; cần đóng file Word trước khi export hoặc kiểm tra lại.
- `_complete-package/` giúp khôi phục đầy đủ bối cảnh làm việc sau này: source, template, draft, review hồ sơ, ảnh và final.

## Gợi ý cải tiến quy trình

- Tạo script tái sử dụng để trích text, ảnh và tạo manifest thay vì chạy lệnh thủ công mỗi lần.
- Tạo `image-manifest.md` hoặc `image-manifest.json` để lưu mapping `image-001` với đoạn text gần nhất.
- Dùng version rõ ràng: `v0.1` cho bản generate ban đầu, `v1.0` sau khi người dùng review và xác nhận.
- Không tự động xóa hoặc ghi đè bản final cũ; tạo version mới khi có thay đổi sau phát hành.
- Nếu tài liệu có dữ liệu khách hàng thật, thêm bước kiểm tra bảo mật ảnh trước khi final.
- Nên tạo `manifest.md` trong `_complete-package/` để sau này biết phải chỉnh sửa từ file nào và version nào.
