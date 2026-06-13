# bmad-meeting-minutes-docx

Agent Skill tạo biên bản nội dung cuộc họp tiếng Việt và xuất file Word `.docx` theo format trang trọng để gửi khách hàng.

## Copy Sang Project Khác

Copy nguyên thư mục này sang project đích:

```text
.agents/skills/bmad-meeting-minutes-docx/
```

Điều kiện môi trường:

- Windows có Python Launcher `py`, hoặc thay `py` bằng lệnh Python tương ứng trên máy.
- Cài thư viện `python-docx` nếu chưa có:

```powershell
py -m pip install python-docx
```

## Dùng Trực Tiếp Script

Tạo file Word từ JSON mẫu:

```powershell
py ".agents/skills/bmad-meeting-minutes-docx/scripts/generate_meeting_minutes_docx.py" ".agents/skills/bmad-meeting-minutes-docx/resources/sample-cocoa-fast-2026-06-12.json" --output "Bien_ban_COCOA_FAST.docx"
```

## Dùng Với Agent

Khi skill được cài trong project, yêu cầu agent bằng các câu như:

- "Tạo biên bản họp Word từ các ý sau"
- "Format biên bản này trang trọng để gửi khách hàng"
- "Xuất file Word biên bản cuộc họp"
- "Dùng skill meeting minutes để tạo .docx"

Agent sẽ chuyển ghi chú thô thành JSON, chạy script tạo `.docx`, rồi trả lại đường dẫn file.

## License

Skill dùng `python-docx`, phát hành theo MIT License và phù hợp cho mục đích thương mại.
