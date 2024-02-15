*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/Sign-in-Marta/invaliddata.robot
Resource             ../pageObjects/Sign-in-Marta/validdata.robot

*** Test Cases ***
Login with Invalid Data
    base.Open Flight Application
    invaliddata.Click Sign In Button On Home Page
    invaliddata.Input Username
    invaliddata.Input Password
    invaliddata.Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    base.Close Flight Application

Login with Valid Data
    base.Open Flight Application
    validdata.Click Sign In Button On Home Page
    validdata.Input Username
    validdata.Input Password
    validdata.Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    base.Close Flight Application