# HƯỚNG DẪN SỬ DỤNG FAST E-INVOICE

## Hướng dẫn tạo tài khoản và phân quyền người sử dụng

Tài liệu dành cho Quản trị viên

Tháng 5, 2026

---

## MỤC LỤC TÀI LIỆU

1. Tổng quan
2. Tạo người sử dụng
3. Phân quyền người sử dụng
4. Phân quyền truy cập theo đơn vị cơ sở
5. Khai báo quyền cho người sử dụng
6. Khai báo người sử dụng quyển hóa đơn
7. Lỗi thường gặp và cách xử lý
8. Lịch sử thay đổi

---

## 1. TỔNG QUAN

**Mô tả:** Tài liệu hướng dẫn Quản trị viên tạo tài khoản người sử dụng trên Fast e-Invoice và thực hiện các bước phân quyền cần thiết để người dùng có thể truy cập, sử dụng chức năng và phát hành hóa đơn theo phạm vi được cấp.

**Đường dẫn truy cập hệ thống:** `https://portal.fast.com.vn/`

**Điều kiện thực hiện:**

- Quản trị viên đăng nhập chương trình Fast e-Invoice bằng user `administrator`.
- Quản trị viên có quyền khai báo người sử dụng và phân quyền trên hệ thống.

**Luồng thực hiện tổng quát:**

1. Tạo người sử dụng mới.
2. Phân quyền truy cập chức năng cho người sử dụng.
3. Phân quyền truy cập theo đơn vị cơ sở.
4. Khai báo quyền liên quan đến phát hành hóa đơn.
5. Khai báo người sử dụng được dùng quyển hóa đơn nếu doanh nghiệp quản lý nhiều quyển hóa đơn.

---

## 2. TẠO NGƯỜI SỬ DỤNG

### 2.1 Khai báo người sử dụng mới

**Mô tả:** Tạo user để người dùng truy cập vào chương trình Fast e-Invoice.

**Đường dẫn:** `Hệ thống / Khai báo người sử dụng`

**Điều kiện thực hiện:**

- Đăng nhập chương trình bằng user `administrator`.

**Thao tác:**

1. Truy cập chương trình Fast e-Invoice tại `https://portal.fast.com.vn/`.
2. Đăng nhập bằng user `administrator`.
3. Truy cập đường dẫn `Hệ thống / Khai báo người sử dụng`.

![Màn hình khai báo người sử dụng](../../_shared-assets/fast-einvoice-account-guide/images/image-001.png)

4. Thao tác `Thêm mới` để tạo user.

![Thao tác thêm mới người sử dụng](../../_shared-assets/fast-einvoice-account-guide/images/image-002.png)

**Thông tin cần khai báo:**

| Trường thông tin | Cách nhập/ý nghĩa | Bắt buộc | Lưu ý |
| --- | --- | --- | --- |
| Người sử dụng | Email dùng để truy cập chương trình | Có | Nên dùng email chính thức của người dùng |
| Tên đầy đủ | Tên đầy đủ của người sử dụng | Có | Nhập theo tên nhân sự hoặc tên định danh nội bộ |
| Xác nhận mật khẩu | Mật khẩu của user admin | Có | Dùng để xác nhận thao tác tạo user |
| Mật khẩu | Mật khẩu ban đầu cấp cho người sử dụng | Có | Người dùng sẽ sử dụng để đăng nhập lần đầu |
| Nhắc lại mật khẩu | Nhập lại mật khẩu ban đầu | Có | Phải trùng với trường `Mật khẩu` |
| Phải đổi mật khẩu lần tới | Yêu cầu người dùng đổi mật khẩu khi truy cập lần đầu | Không | Nên check để người dùng tự đổi mật khẩu theo mong muốn |

**Kết quả mong đợi:** User được tạo thành công và có thể dùng thông tin đăng nhập ban đầu để truy cập chương trình sau khi được phân quyền.

**Lưu ý:**

- Sau khi khai báo thông tin ban đầu, nhấn `Lưu` để hoàn thành bước tạo user.
- Việc tạo user chưa đủ để người dùng sử dụng hệ thống; cần thực hiện thêm các bước phân quyền bên dưới.

---

## 3. PHÂN QUYỀN NGƯỜI SỬ DỤNG

### 3.1 Phân quyền truy cập chức năng

**Mô tả:** Phân quyền cho user vừa tạo được phép truy cập các chức năng trên hệ thống Fast e-Invoice.

**Đường dẫn:** `Hệ thống / Phân quyền truy cập`

**Thao tác:**

1. Truy cập chức năng phân quyền truy cập.
2. Chọn user vừa tạo.
3. Thao tác `Phân quyền`.

![Chọn user và thao tác phân quyền](../../_shared-assets/fast-einvoice-account-guide/images/image-003.png)

4. Check chọn các chức năng cho phép user truy cập.
5. Lưu thông tin phân quyền.

**Kết quả mong đợi:** User được cấp quyền truy cập các chức năng đã chọn.

**Lưu ý:**

- Nếu muốn user mới kế thừa quyền giống một user đang sử dụng, có thể dùng thao tác `Sao chép` để copy quyền từ user cũ.
- Cần kiểm tra lại quyền sau khi sao chép để tránh cấp thừa quyền ngoài phạm vi công việc.

---

## 4. PHÂN QUYỀN TRUY CẬP THEO ĐƠN VỊ CƠ SỞ

### 4.1 Khai báo quyền truy cập theo đơn vị cơ sở

**Mô tả:** Phân quyền các chức năng tổng thể cho user theo phạm vi đơn vị cơ sở trên hệ thống.

**Đường dẫn:** `Hệ thống / Phân quyền truy cập theo ĐVCS`

**Thao tác:**

1. Truy cập đường dẫn `Hệ thống / Phân quyền truy cập theo ĐVCS`.
2. Chọn đơn vị `CTY`.
3. Thao tác `Thêm mới`.
4. Chọn user vừa tạo.
5. Phân các quyền cần thiết, ví dụ: `Thêm mới`, `Sửa`, `Xóa`.

![Phân quyền truy cập theo đơn vị cơ sở](../../_shared-assets/fast-einvoice-account-guide/images/image-004.png)

**Kết quả mong đợi:** User có quyền thao tác trên đơn vị cơ sở được phân quyền.

**Lưu ý:**

- Nếu user chưa được phân quyền theo đơn vị cơ sở, user có thể không thao tác được dù đã được cấp quyền chức năng.
- Chỉ cấp các quyền `Thêm mới`, `Sửa`, `Xóa` theo đúng phạm vi công việc của người dùng.

---

## 5. KHAI BÁO QUYỀN CHO NGƯỜI SỬ DỤNG

### 5.1 Khai báo quyền phát hành hóa đơn

**Mô tả:** Phân quyền cho user thực hiện các tác vụ liên quan đến phát hành hóa đơn.

**Đường dẫn:** `Hệ thống / Khai báo quyền cho người sử dụng`

**Thao tác:**

1. Truy cập đường dẫn `Hệ thống / Khai báo quyền cho người sử dụng`.
2. Thao tác `Thêm mới`.
3. Chọn user cần khai báo quyền.
4. Gán quyền `User kế toán` và quyền `Phát hành KT`.
5. Lưu thông tin khai báo.

![Khai báo quyền cho người sử dụng](../../_shared-assets/fast-einvoice-account-guide/images/image-005.png)

**Kết quả mong đợi:** User được cấp quyền thực hiện các tác vụ liên quan đến phát hành hóa đơn theo quyền đã khai báo.

**Lưu ý:**

- Cần xác nhận đúng nhóm quyền trước khi cấp để tránh user không phát hành được hóa đơn hoặc được cấp quyền vượt phạm vi.

---

## 6. KHAI BÁO NGƯỜI SỬ DỤNG QUYỂN HÓA ĐƠN

### 6.1 Phân quyền user sử dụng quyển hóa đơn

**Mô tả:** Khai báo user được sử dụng quyển hóa đơn chỉ định để phát hành hóa đơn. Bước này cần thực hiện khi doanh nghiệp có nhiều quyển hóa đơn khác nhau và muốn giới hạn user chỉ được sử dụng một số quyển nhất định.

**Đường dẫn:** `Đăng ký hóa đơn / Khai báo sử dụng hóa đơn`

**Thao tác:**

1. Truy cập đường dẫn `Đăng ký hóa đơn / Khai báo sử dụng hóa đơn`.
2. Tìm các quyển hóa đơn hiện hành.
3. Chọn quyển hóa đơn cần phân quyền và thao tác `Sửa`.
4. Chuyển sang tab `Người sử dụng`.
5. Thao tác `Thêm dòng`.
6. Chọn user cần được phân quyền sử dụng quyển hóa đơn.
7. Lưu thông tin khai báo.

![Khai báo user sử dụng quyển hóa đơn](../../_shared-assets/fast-einvoice-account-guide/images/image-006.png)

**Kết quả mong đợi:** User chỉ sử dụng được quyển hóa đơn đã được khai báo quyền.

**Lưu ý:**

- Nếu không khai báo user sử dụng quyển hóa đơn trong trường hợp có nhiều quyển, user có thể không chọn được quyển cần phát hành.
- Cần kiểm tra đúng quyển hóa đơn hiện hành trước khi phân quyền.

---

## 7. LỖI THƯỜNG GẶP VÀ CÁCH XỬ LÝ

| Hiện tượng | Nguyên nhân thường gặp | Cách xử lý |
| --- | --- | --- |
| User đăng nhập được nhưng không thấy chức năng | Chưa phân quyền truy cập chức năng | Kiểm tra lại `Hệ thống / Phân quyền truy cập` |
| User không thao tác được trên đơn vị | Chưa phân quyền theo đơn vị cơ sở | Kiểm tra lại `Hệ thống / Phân quyền truy cập theo ĐVCS` |
| User không phát hành được hóa đơn | Chưa khai báo quyền phát hành hóa đơn | Kiểm tra quyền tại `Hệ thống / Khai báo quyền cho người sử dụng` |
| User không chọn được quyển hóa đơn | Chưa khai báo user sử dụng quyển hóa đơn | Kiểm tra tại `Đăng ký hóa đơn / Khai báo sử dụng hóa đơn` |

---

## 8. LỊCH SỬ THAY ĐỔI

| Phiên bản | Ngày | Người cập nhật | Nội dung thay đổi |
| --- | --- | --- | --- |
| v0.1 | 2026-05-23 | OpenCode | Generate bản nháp từ file nguồn `Huong dan tao tai khoan fast einvoice.docx` |
