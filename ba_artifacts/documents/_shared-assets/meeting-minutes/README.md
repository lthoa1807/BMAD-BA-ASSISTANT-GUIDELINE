# Bộ Tạo Biên Bản Cuộc Họp Word

Bộ này dùng để tạo file Word `.docx` theo văn phong và format trang trọng để gửi khách hàng.

## Thành phần

- `template.json`: file nhập nội dung biên bản.
- `generate_meeting_minutes_docx.py`: script xuất Word bằng `python-docx`.

## Cách dùng nhanh

1. Sao chép `template.json` thành một file nội dung mới, ví dụ `cocoa-fast-2026-06-12.json`.
2. Sửa các trường trong file JSON: tiêu đề phụ, thông tin cuộc họp, nội dung đã thống nhất, danh sách công việc tiếp theo, vùng ký.
3. Chạy lệnh:

```powershell
py "ba_artifacts/documents/_shared-assets/meeting-minutes/generate_meeting_minutes_docx.py" "ba_artifacts/documents/_shared-assets/meeting-minutes/cocoa-fast-2026-06-12.json"
```

Hoặc chỉ định đường dẫn file Word đầu ra:

```powershell
py "ba_artifacts/documents/_shared-assets/meeting-minutes/generate_meeting_minutes_docx.py" "ba_artifacts/documents/_shared-assets/meeting-minutes/cocoa-fast-2026-06-12.json" --output "Bien_ban_COCOA_FAST.docx"
```

## Chuẩn trình bày

- Font: Times New Roman.
- Khổ lề: trên 2.0 cm, dưới 2.0 cm, trái 2.5 cm, phải 2.0 cm.
- Tiêu đề căn giữa, in đậm.
- Nội dung theo 3 phần: nội dung đã thống nhất, công việc tiếp theo, kết luận.
- Công việc tiếp theo trình bày dạng bảng gồm STT, nội dung, phụ trách, thông tin phản hồi/thời hạn.
- Có vùng ký xác nhận cho khách hàng và FAST.

## Ghi chú license

Script dùng thư viện `python-docx`, phát hành theo MIT License và cho phép sử dụng trong mục đích thương mại.
