*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/Sign-in-Marta/invaliddata.robot

*** Test Cases ***
Login with Invalid Data
    base.Open Flight Application
    invaliddata.Click Sign In Button On Home Page
    Input Username
    invaliddata.Input Password
    Click Sign In Button On Login Page
