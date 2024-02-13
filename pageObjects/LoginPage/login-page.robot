*** Settings ***
Resource            ../base/base.robot
Variables           ../LoginPage/login-locator.yaml
*** Keywords ***
Input Username
    Wait Until Page Contains Element      locator=${input_usn_field}
    Input Text    locator=${input_usn_field}  text=support@ngendigital.com
Input Password User
    Input Text    locator=${input_password_field}    text=abc123
Click Sign In Button On Login Page
    Click Element    locator=${sign_in_btn_on_login}
