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

Close Flight Application
    Close Application