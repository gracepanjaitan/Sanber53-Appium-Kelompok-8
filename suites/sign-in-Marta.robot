*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/Sign-in-Marta/invaliddata.robot
Resource             ../pageObjects/Sign-in-Marta/validdata.robot

*** Test Cases ***
Login with Invalid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    invaliddata.Input Password
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    Close Flight Application

Login with Valid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    validdata.Input Password
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    Close Flight Application