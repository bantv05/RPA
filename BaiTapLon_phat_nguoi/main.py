from selenium import webdriver
from selenium.webdriver.common.by import By
import pytesseract
from PIL import Image
import time
from io import BytesIO
from base64 import b64decode
import schedule

 
def tra_cuu_bien_so():
    try:
        # b1: Mở trình duyệt Chrome
        driver = webdriver.Chrome()
        # b2: Truy cập trang web
        driver.get("https://www.csgt.vn/tra-cuu-phuong-tien-vi-pham.html")
        time.sleep(2)  # Đợi trang tải hoàn tất

        # b4: Điền biển số vào ô tìm kiếm
        bks = "43A56789"
        xpath_bks = '//*[@id="formBSX"]/div[2]/div[1]/input'
        element_bs = driver.find_element(By.XPATH, xpath_bks)
        element_bs.click()
        element_bs.send_keys(bks)

        # Chọn loại phương tiện (Xe máy)
        xpath_lpt = '//*[@id="formBSX"]/div[2]/div[2]/select/option[1]'
        element_lpt = driver.find_element(By.XPATH, xpath_lpt)
        element_lpt.click()

        # Lấy hình ảnh CAPTCHA
        selecter_captcha = '#imgCaptcha'
        captcha_image = driver.find_element(By.CSS_SELECTOR, selecter_captcha)
        # img_captcha_url = captcha_image.get_attribute("src")

        captcha_base64 = captcha_image.screenshot_as_base64
        captcha_img_data = BytesIO(b64decode(captcha_base64))
        captcha_img = Image.open(captcha_img_data)

        captcha_img.save("captcha.png")

        captcha_text = pytesseract.image_to_string(captcha_img).strip()
        print(captcha_text)
        
        # Điền mã bảo mật
        selector_captcha = '#formBSX > div.bot > div:nth-child(3) > div > input'
        element_captcha = driver.find_element(By.CSS_SELECTOR, selector_captcha)
        element_captcha.click()
        element_captcha.send_keys(captcha_text)

        # Click nút Tra cứu
        xpath_btn = '//*[@id="formBSX"]/div[2]/input[1]'
        element_btn = driver.find_element(By.XPATH, xpath_btn)
        element_btn.click()
        # Thông báo
        xpath_thong_bao_loi = '//*[@id="formBSX"]/div[2]/div[4]'
        element_loi = driver.find_element(By.XPATH, xpath_thong_bao_loi)
        thong_bao_loi = element_loi.text
        if thong_bao_loi =='Mã xác nhận sai!':
            print(f"Thông báo lỗi: {thong_bao_loi}")
        else:
            print("Không lỗi")
        time.sleep(15)  # Đợi kết quả tra cứu
    except Exception as e:
        print(f"Đã xảy ra lỗi trong quá trình thao tác: {e}")

    finally:
        driver.quit()
schedule.every().day.at("06:00").do(tra_cuu_bien_so)
schedule.every().day.at("12:00").do(tra_cuu_bien_so)
# test
# schedule.every(10).seconds.do(tra_cuu_bien_so)
while True:
    schedule.run_pending()
    time.sleep(1)