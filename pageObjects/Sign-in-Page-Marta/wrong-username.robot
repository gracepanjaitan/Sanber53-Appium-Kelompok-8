*** Settings ***
Resource                               ../base/basemarta.robot
Variables                              ../Sign-in-Page-Marta/Sign-in-locator.yaml


*** Keywords ***
Click Sign In Button On Home-Page
    Click Element                      locator=${sign_in_button_on_home}

Input Username
    Wait Until Element Is Visible      locator=${Username_Input_Field}
    Input Text                         locator=${Username_Input_Field}     text=marta@ngendigital.com

Input Password
    Input Text                         locator=${Password_Input_Field}      text=abc123

Click Sign In Button On Login Page
    Click Element                      locator=${sign_in_button_on_login}

Verify User Is Fail To Logged In
    Wait Until Page Contains           text=Invalid username/password
