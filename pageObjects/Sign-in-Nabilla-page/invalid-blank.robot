*** Settings ***
Resource                               ../base/base.robot
Variables                              SigninLocator-Nabilla.yaml

*** Keywords ***
Click Sign In Button On Home Page
    Click Element                      locator=${sign_in_button_on_home}

Input Username
    Wait Until Element Is Visible      locator=${Username_Input_Field}
    Input Text                         locator=${Username_Input_Field}      text= lala@gmail.com

Input Password
    Input Text                         locator=${Password_Input_Field}       text=1234  

Click Sign In Button On Login Page
    Click Element                      locator=${sign_in_btn_on_login}
Verify User Is Fail To Logged In
    Wait Until Page Contains           text=Invalid username/password


