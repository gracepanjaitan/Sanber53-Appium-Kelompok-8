*** Settings ***
Resource            ../base/base.robot
*** Keywords ***
Input Username
    Wait Until Page Contains Element      locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com
Input Password User
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123
Click Sign In Button On Login Page
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
