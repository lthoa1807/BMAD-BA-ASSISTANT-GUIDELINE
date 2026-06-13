# Document Creation Support Guide

File này dùng để trả lời và xử lý khi người dùng hỏi về việc hỗ trợ tạo lại tài liệu hướng dẫn từ file nguồn thô, đặc biệt là file `.docx` có nội dung viết tay, screenshot hoặc format chưa chuẩn.

## Khi nào dùng quy trình này

Dùng quy trình này khi người dùng có nhu cầu:

- Tạo tài liệu hướng dẫn sử dụng từ file `.docx` thô.
- Chuẩn hóa tài liệu hiện có theo template `user-guide`.
- Trích ảnh từ file Word và gắn lại vào tài liệu đúng vị trí.
- Tạo bản Markdown, Word final và bộ hồ sơ đầy đủ để lưu trữ/chỉnh sửa về sau.
- Tái tạo tài liệu theo phong cách tài liệu mẫu đã chuẩn hóa trong `template-doc/user-guide/`.

Không dùng quy trình này nếu người dùng chỉ hỏi chỉnh vài câu chữ đơn lẻ, review prose, hoặc tạo nội dung hoàn toàn mới mà không có file nguồn/tài liệu mẫu. Các trường hợp đó cần hỏi thêm mục tiêu và phạm vi trước.

## Cách trả lời ngắn khi người dùng hỏi

Mẫu trả lời:

```text
Có. Tôi có thể hỗ trợ tạo lại tài liệu hướng dẫn từ file Word thô theo quy trình chuẩn: nhận file nguồn, trích nội dung và hình ảnh, chuẩn hóa theo template user-guide, tạo bản draft để review, xuất bản final Markdown/Word, và nếu bạn đồng ý thì tập hợp toàn bộ source/template/draft/assets/final vào một bộ hồ sơ hoàn chỉnh.

Bạn chỉ cần cung cấp file .docx nguồn và cho biết mong muốn đầu ra: draft để review, bản Word final, hay cả bộ hồ sơ đầy đủ.
```

## Cách trả lời khi người dùng đã có file nguồn

Mẫu trả lời:

```text
Tôi sẽ xử lý file này theo quy trình tạo tài liệu chuẩn:

1. Đặt file nguồn vào incoming-doc/.
2. Trích text và toàn bộ ảnh trong file Word.
3. Tạo draft theo template user-guide tại working-doc/<document-name>/draft.md.
4. Gắn ảnh vào vị trí phù hợp theo thứ tự và ngữ cảnh trong file nguồn.
5. Ghi lại assumptions, open questions và review notes.
6. Khi bạn yêu cầu hoặc sau khi review xong, tôi tạo bản final Markdown/Word trong final-doc/<document-name>/.
7. Trước khi tập hợp bộ hồ sơ hoàn chỉnh hoặc xóa file làm việc cũ, tôi sẽ hỏi xác nhận.
```

## Câu hỏi cần hỏi người dùng trước khi bắt đầu

Chỉ hỏi các câu thật sự cần thiết. Nếu người dùng đã cung cấp file nguồn và yêu cầu rõ, có thể bắt đầu xử lý ngay.

- File nguồn `.docx` nào cần xử lý?
- Tên tài liệu mong muốn là gì, nếu khác với tên file nguồn?
- Đầu ra mong muốn là draft để review, final Word, hay cả bộ hồ sơ đầy đủ?
- Có cần giữ nguyên thuật ngữ, tên menu, tên màn hình như file nguồn không?
- Có dữ liệu nhạy cảm trong ảnh cần che hoặc loại bỏ không?

## Quy trình xử lý chuẩn

Quy trình chi tiết nằm tại `ba_artifacts/documents/template-doc/user-guide/generation-workflow.md`. Khi thực hiện, làm theo các bước sau:

1. Nhận file nguồn: đặt `.docx` vào `ba_artifacts/documents/incoming-doc/` và không chỉnh sửa trực tiếp file nguồn.
2. Xác định tên tài liệu: đặt `<document-name>` ngắn, rõ nghĩa, dùng kebab-case.
3. Trích xuất nội dung: đọc text theo thứ tự xuất hiện trong file Word.
4. Trích xuất ảnh: lưu ảnh vào `ba_artifacts/documents/_shared-assets/<document-name>/images/` với tên `image-001.png`, `image-002.png`, ...
5. Generate draft: tạo `ba_artifacts/documents/working-doc/<document-name>/draft.md` theo template `user-guide`.
6. Gắn ảnh vào draft: ưu tiên vị trí gần đoạn thao tác hoặc section liên quan nhất.
7. Tạo hồ sơ review: tạo `open-questions.md`, `assumptions.md`, `review-notes.md`.
8. Tạo final: khi người dùng yêu cầu hoặc đã review đủ, tạo Markdown final tại `ba_artifacts/documents/final-doc/<document-name>/`.
9. Export Word: ưu tiên `pandoc`, sau đó `soffice`, nếu không có thì tạo `.docx` bằng Word OpenXML.
10. Hỏi trước khi đóng gói: chỉ tạo `_complete-package/` khi người dùng đồng ý rõ ràng.
11. Đóng gói nếu được xác nhận: tập hợp `source/`, `template/`, `working/`, `assets/images/`, `final/` và `manifest.md` vào `final-doc/<document-name>/_complete-package/v<version>/`.
12. Kiểm tra package: xác nhận đủ file nguồn, template, working files, ảnh, final files và manifest.
13. Hỏi trước khi dọn dẹp: chỉ xóa dữ liệu cũ trong `incoming-doc/`, `working-doc/<document-name>/` và `_shared-assets/<document-name>/` sau khi package đầy đủ và người dùng xác nhận.

## Cấu trúc thư mục cần dùng

```text
ba_artifacts/documents/
  incoming-doc/
    <raw-file>.docx
  template-doc/
    user-guide/
      00-document-template.md
      generation-workflow.md
      writing-rules.md
      review-checklist.md
  working-doc/
    <document-name>/
      draft.md
      open-questions.md
      assumptions.md
      review-notes.md
  _shared-assets/
    <document-name>/
      images/
        image-001.png
        image-002.png
  final-doc/
    <document-name>/
      <document-name>-v0.1.md
      <document-name>-v0.1.docx
      changelog.md
      _complete-package/
        v0.1/
          manifest.md
```

## Quy tắc trả lời trong quá trình làm

Thông báo ngắn gọn cho người dùng ở các mốc quan trọng:

- Khi bắt đầu xử lý file nguồn.
- Khi đã trích được số đoạn text và số ảnh.
- Khi tạo xong draft và có open questions cần review.
- Trước khi tạo final nếu còn điểm chưa chắc chắn.
- Trước khi đóng gói bộ hồ sơ hoàn chỉnh.
- Trước khi xóa dữ liệu làm việc cũ.

Không cần báo từng thao tác nhỏ như đọc từng file, copy từng ảnh hoặc cập nhật từng dòng.

## Quy tắc bắt buộc

- Không sửa trực tiếp file nguồn trong `incoming-doc/`.
- Không bỏ ảnh khỏi tài liệu nếu chưa có lý do rõ ràng.
- Không đưa sang final khi còn thiếu ảnh hoặc section quan trọng chưa xử lý.
- Không tạo `_complete-package/` nếu chưa hỏi và được người dùng đồng ý.
- Không tạo folder `package-doc/` riêng.
- Không xóa dữ liệu làm việc cũ nếu chưa kiểm tra package đầy đủ và chưa được người dùng xác nhận.
- Không xóa template dùng chung hoặc bản final khi dọn dẹp.

## Checklist trước khi nói đã hoàn tất

- Draft có đủ nội dung chính từ file nguồn.
- Ảnh đã được trích xuất và gắn vào vị trí phù hợp.
- `open-questions.md`, `assumptions.md`, `review-notes.md` đã được tạo nếu có điểm cần ghi nhận.
- Final Markdown đã được tạo đúng version nếu người dùng yêu cầu final.
- Word `.docx` đã được export nếu người dùng cần bản Word.
- `_complete-package/` chỉ được tạo sau khi người dùng xác nhận.
- Package có đủ `source/`, `template/`, `working/`, `assets/images/`, `final/` và `manifest.md` nếu đã đóng gói.
- Worklog được cập nhật khi có thay đổi quy trình hoặc tạo artifact quan trọng.

## Mẫu trả lời khi hoàn tất draft

```text
Tôi đã tạo xong bản draft theo template user-guide tại working-doc/<document-name>/draft.md, đã trích và gắn <n> ảnh từ file nguồn.

Tôi cũng tạo open-questions.md, assumptions.md và review-notes.md để bạn kiểm tra các điểm cần xác nhận trước khi chuyển sang final.
```

## Mẫu hỏi trước khi đóng gói

```text
Bản final đã được tạo trong final-doc/<document-name>/. Bạn có muốn tôi tập hợp bộ tài liệu hoàn chỉnh vào final-doc/<document-name>/_complete-package/v<version>/ để lưu trữ và chỉnh sửa về sau không?
```

## Mẫu hỏi trước khi dọn dẹp

```text
Bộ hồ sơ đã đủ dữ liệu trong final-doc/<document-name>/_complete-package/v<version>/. Bạn có muốn tôi xóa các file làm việc cũ ở incoming-doc, working-doc/<document-name> và _shared-assets/<document-name> không?
```
