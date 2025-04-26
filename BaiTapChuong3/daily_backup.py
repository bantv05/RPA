import os
import shutil
import smtplib
from datetime import datetime
from email.mime.text import MIMEText
from schedule import every, run_pending
import time
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Paths
SOURCE_FILE = os.getenv('SOURCE_FILE', f'E:/TrinhVanBan/TRINHVANBAN_22CT3/RPA-TuDongHoaQuyTrinh/BaiTapChuong3/data/SQL_DATA_QL_ToaNhaCaoOc.sql')
BACKUP_DIR = os.getenv('BACKUP_DIR', f'E:\TrinhVanBan\TRINHVANBAN_22CT3\RPA-TuDongHoaQuyTrinh\BaiTapChuong3\backup_data')

# Email config
SMTP_SERVER = os.getenv('SMTP_SERVER', 'smtp.gmail.com')
SMTP_PORT = int(os.getenv('SMTP_PORT', 587))
EMAIL_SENDER = os.getenv('EMAIL_SENDER')
EMAIL_PASSWORD = os.getenv('EMAIL_PASSWORD')
EMAIL_RECEIVER = os.getenv('EMAIL_RECEIVER')

def send_email(subject: str, body: str):
    msg = MIMEText(body)
    msg['Subject'] = subject
    msg['From'] = EMAIL_SENDER
    msg['To'] = EMAIL_RECEIVER

    try:
        with smtplib.SMTP(SMTP_SERVER, SMTP_PORT) as server:
            server.starttls()
            server.login(EMAIL_SENDER, EMAIL_PASSWORD)
            server.send_message(msg)
    except Exception as e:
        print(f"Không gửi được email: {e}")

def backup_database():
    now = datetime.now().strftime('%Y-%m-%d_%H-%M-%S')

    if not os.path.exists(SOURCE_FILE):
        print(f"SOURCE_FILE '{SOURCE_FILE}' không tồn tại.")
        send_email("Backup thất bại", f"Không tìm thấy file: {SOURCE_FILE}")
        return

    if not os.path.exists(BACKUP_DIR):
        os.makedirs(BACKUP_DIR)

    filename = os.path.basename(SOURCE_FILE)
    backup_filename = f"{os.path.splitext(filename)[0]}_{now}{os.path.splitext(filename)[1]}"
    backup_path = os.path.join(BACKUP_DIR, backup_filename)

    try:
        shutil.copy2(SOURCE_FILE, backup_path)
        print(f"Backup thành công: {backup_path}")
        send_email("Backup thành công", f"Đã backup file: {backup_path}")
    except Exception as e:
        print(f"Backup thất bại: {e}")
        send_email("Backup thất bại", str(e))

# Schedule backup mỗi 1 phút (test)
# every(1).minutes.do(backup_database)
every().day.at("00:00").do(backup_database)

if __name__ == "__main__":
    print("Đã bắt đầu lập lịch sao lưu...")
    while True:
        run_pending()
        time.sleep(60)
