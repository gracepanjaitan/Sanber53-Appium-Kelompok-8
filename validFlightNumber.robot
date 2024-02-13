*** Settings ***
Library            AppiumLibrary
*** Variables ***
${REMOTE_URL}           http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     13.0
${DEVICE_NAME}          RRCRB00K2MB
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity

*** Keywords ***
Open Flight Application
    Open Application    remote_url=${REMOTE_URL}    
    ...                 platformName=${PLATFORM_NAME}  
    ...                 platformVersion=${PLATFORM_VERSION}    
    ...                 deviceName=${DEVICE_NAME}    
    ...                 appPackage=${APP_PACKAGE}    
    ...                 appActivity=${APP_ACTIVITY}
Click Sign In Button On Home Page
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
Input Username
    Wait Until Page Contains Element      locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com
Input Password
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123
Click Sign In Button On Login Page
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
Verify User Is Succesfully Logged In 
    Wait Until Page Contains    text="Sign Out"
Click Search Button On Home Page
    Wait Until Page Contains    text="Sign Out"
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
Enter Valid Flight Number
    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]   text=DA935
Click Search Button On Search Page
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
Verify the Flight Data Shown
    Wait Until Page Contains    text="Toronto to Paris"
    Wait Until Page Contains    text="DA 935"
    Wait Until Page Contains    text="Schedule"
    Wait Until Page Contains    text="17:00"

Close Flight Application
    Close Application

*** Test Cases ***
Search with Valid Flight Number
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password
    Click Sign In Button On Login Page
    Verify User Is Succesfully Logged In
    Click Search Button On Home Page
    Enter Valid Flight Number
    Click Search Button On Search Page
    Verify the Flight Data Shown
    Close Flight Application
    
