*** Settings ***
Resource                               ../base/base.robot
Variables                              Sign-in-locator.yaml

*** Keywords ***
Click Sign In Button On Home Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Input Username
    Wait Until Element Is Visible      locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                         locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]      text= Marta12

Input Password
    Input Text                         locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]        text=1234  

Click Sign In Button On Login Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
Verify User Is Fail To Logged In
    Wait Until Page Contains           text=Invalid username/password

Close Flight Application
    Close Application


*** Test Cases ***

Login With Invalid Username And Blank Password
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    Close Flight Application
Login With Blank Username And Invalid Password
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    Close Flight Application
Login With Blank Username And Blank Password
    Open Flight Application
    Click Sign In Button On Home Page
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    Close Flight Application