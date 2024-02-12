*** Settings ***
Resource            ../base/base.robot
*** Keywords *** 
Click Sign In Button On Home Page
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
Verify User Is Succesfully Logged In 
    Wait Until Page Contains    text="Sign Out"
Click Search Button On Home Page
    Wait Until Page Contains    text="Sign Out"
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]