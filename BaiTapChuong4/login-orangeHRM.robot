*** Settings ***
# Đây là test case đăng nhập
Documentation 
Library    SeleniumLibrary

*** Variables ***

${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME}    Admin
${PASSWORD}    admin123

*** Test Cases ***
Vail Login
    Mo Trinh Duyet
    Dang Nhap    ${USERNAME}    ${PASSWORD}
    
    Wait Until Page Contains Element    xpath=//body    10s

    ${login_success}=    Run Keyword And Return Status    Page Should Contain Element    xpath=//h6[text()='Dashboard']
    
    IF    '${login_success}'
        Kiem Tra Dang Nhap Thanh Cong
    ELSE
        Kiem Tra Dang Nhap That Bai
    END

    Close Browser
*** Keywords ***
#Mục này định nghĩa các hàm
Mo Trinh Duyet
    Open Browser    ${URL}    chrome
    Maximize Browser Window
Dang Nhap
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Wait Until Element Is Visible    xpath=//input[@name="username"]    10s
    Input Text    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    ${USERNAME}
    Input Text    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    ${PASSWORD}
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
Kiem Tra Dang Nhap Thanh Cong
    Wait Until Page Contains    Dashboard    10s
    Page Should Contain     Dashboard
    Log To Console    Đăng nhập thành công! Welcome!

Kiem Tra Dang Nhap That Bai
    Wait Until Page Contains    Invalid credentials    10s
    Page Should Contain    Invalid credentials
    Log To Console    Đăng nhập thất bại! Sai thông tin đăng nhập.

    # bài tập về nhà trang https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    

