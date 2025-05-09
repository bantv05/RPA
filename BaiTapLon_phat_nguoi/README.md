# Phạt nguội


Công cụ Python này giúp bạn tự động tra cứu thông tin vi phạm giao thông của phương tiện trên trang web của Cổng thông tin điện tử Cảnh sát giao thông Việt Nam ([https://www.csgt.vn/tra-cuu-phuong-tien-vi-pham.html](https://www.csgt.vn/tra-cuu-phuong-tien-vi-pham.html)).

## Mục lục

- [Mô tả](#mô-tả)
- [Các tính năng chính](#các-tính-năng-chính)
- [Hướng dẫn cài đặt](#hướng-dẫn-cài-đặt)
  - [Bước 1: Yêu cầu hệ thống](#bước-1-yêu-cầu-hệ-thống)
  - [Bước 2: Cài đặt Python](#bước-2-cài-đặt-python)
  - [Bước 3: Cài đặt Google Chrome và ChromeDriver](#bước-3-cài-đặt-google-chrome-và-chromedriver)
  - [Bước 4: Cài đặt Tesseract OCR](#bước-4-cài-đặt-tesseract-ocr)
  - [Bước 5: Cài đặt các thư viện Python cần thiết](#bước-5-cài-đặt-các-thư-viện-python-cần-thiết)
  - [Bước 6: Cấu hình đường dẫn Tesseract (nếu cần)](#bước-6-cấu-hình-đường-dẫn-tesseract-nếu-cần)


## Mô tả

Project này được tạo ra để giúp người dùng tự động hóa quá trình kiểm tra xem phương tiện của mình có bị phạt nguội hay không trên trang web của Cảnh sát giao thông. Chương trình sẽ tự động mở trình duyệt, nhập biển số xe, giải mã mã CAPTCHA và hiển thị kết quả (nếu có). Bạn cũng có thể thiết lập để chương trình tự động chạy theo lịch trình hàng ngày.

## Các tính năng chính

- Tự động mở và điều khiển trình duyệt Google Chrome.
- Tự động điền biển số xe vào form tra cứu.
- Tự động nhận diện và nhập mã CAPTCHA bằng công nghệ OCR.
- Hiển thị thông báo nếu có vi phạm.
- Hỗ trợ lên lịch chạy tự động hàng ngày (ví dụ: 6h sáng và 12h trưa).

## Hướng dẫn cài đặt

Đây là các bước chi tiết để cài đặt và chạy project này trên máy tính của bạn. Hãy làm theo cẩn thận.

### Bước 1: Yêu cầu hệ thống

- **Hệ điều hành:** Windows, macOS hoặc Linux.
- **Kết nối Internet:** Để tải xuống các phần mềm và truy cập trang web.

### Bước 2: Cài đặt Python

Chương trình này được viết bằng Python 3. Nếu bạn chưa cài đặt Python, hãy làm theo các bước sau:

1.  Truy cập trang web chính thức của Python: [https://www.python.org/downloads/](https://www.python.org/downloads/)
2.  Tải xuống phiên bản Python 3 mới nhất phù hợp với hệ điều hành của bạn.
3.  Chạy file cài đặt và làm theo hướng dẫn. **Quan trọng:** Trong quá trình cài đặt, hãy đảm bảo bạn chọn tùy chọn **"Add Python to PATH"** (thường có một hộp kiểm để chọn).

### Bước 3: Cài đặt Google Chrome và ChromeDriver

Chương trình này sử dụng Google Chrome để tự động hóa. Bạn cần cài đặt Google Chrome và ChromeDriver (một trình điều khiển cho phép Selenium điều khiển Chrome).

1.  **Cài đặt Google Chrome:** Nếu bạn chưa có, hãy tải xuống và cài đặt Google Chrome từ trang web chính thức: [https://www.google.com/chrome/](https://www.google.com/chrome/)
2.  **Cài đặt ChromeDriver:**
    - Mở Google Chrome, gõ `chrome://version/` vào thanh địa chỉ và nhấn Enter để xem phiên bản Chrome của bạn.
    - Truy cập trang web ChromeDriver: [https://chromedriver.chromium.org/downloads](https://chromedriver.chromium.org/downloads)
    - Tải xuống phiên bản ChromeDriver **tương ứng** với phiên bản Chrome của bạn.
    - Giải nén file đã tải xuống (thường là một file `.exe` trên Windows hoặc một file thực thi trên macOS/Linux).
    - **Cách đơn giản nhất:** Đặt file `chromedriver` đã giải nén vào cùng thư mục với file Python của project này. Hoặc, bạn có thể đặt nó vào một thư mục trong PATH của hệ thống (ví dụ: `/usr/local/bin` trên macOS/Linux hoặc `C:\Windows\System32` trên Windows).

### Bước 4: Cài đặt Tesseract OCR

Tesseract OCR là một công cụ mã nguồn mở để nhận dạng văn bản trong hình ảnh (sử dụng để đọc mã CAPTCHA).

- **Windows:**
    1.  Truy cập trang web: [https://github.com/UB-Mannheim/tesseract/wiki](https://github.com/UB-Mannheim/tesseract/wiki)
    2.  Tìm và tải xuống trình cài đặt `.exe` cho phiên bản Tesseract mới nhất.
    3.  Chạy trình cài đặt và làm theo hướng dẫn. **Quan trọng:** Ghi nhớ thư mục bạn đã cài đặt Tesseract (ví dụ: `C:\Program Files\Tesseract-OCR`). Sau khi cài đặt, bạn có thể cần thêm đường dẫn này vào biến môi trường PATH của hệ thống.


### Bước 5: Cài đặt các thư viện Python cần thiết

Project này sử dụng một số thư viện Python. Bạn có thể cài đặt chúng bằng pip (trình quản lý gói của Python).

1.  Mở **Terminal** (trên macOS/Linux) hoặc **Command Prompt** (trên Windows).
2.  Di chuyển đến thư mục chứa file Python của project này bằng lệnh `cd`:
    ```bash
    cd /path/to/your/project
    ```
    (Thay `/path/to/your/project` bằng đường dẫn thực tế đến thư mục project).
3.  Chạy lệnh sau để cài đặt tất cả các thư viện cần thiết từ file `requirements.txt` (nếu có):
    ```bash
    pip install -r requirements.txt
    ```
    Nếu không có file `requirements.txt`, bạn có thể cài đặt từng thư viện riêng lẻ:
    ```bash
    pip install selenium Pillow pytesseract schedule
    ```

### Bước 6: Cấu hình đường dẫn Tesseract (nếu cần)

Trong một số trường hợp, `pytesseract` có thể không tự động tìm thấy đường dẫn đến Tesseract OCR. Nếu bạn gặp lỗi liên quan đến việc không tìm thấy Tesseract, bạn cần cấu hình đường dẫn trong file Python của mình.

1.  Mở file Python chính của project (ví dụ: `main.py`).
2.  Thêm các dòng sau vào đầu file, **thay thế `/path/to/tesseract` bằng đường dẫn thực tế đến thư mục cài đặt Tesseract trên hệ thống của bạn**:

    ```python
    import pytesseract

    # Ví dụ đường dẫn trên Windows
    pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'
