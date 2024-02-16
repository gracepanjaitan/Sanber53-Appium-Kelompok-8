*** Settings ***
Resource             ../pageObjects/HomePage/home-pagemarta.robot
Resource             ../pageObjects/Sign-in-Page-Marta/invaliddata.robot
Resource             ../pageObjects/Sign-in-Page-Marta/wrong-username.robot
Resource             ../pageObjects/Sign-in-Page-Marta/wrong-password.robot
Resource             ../pageObjects/Sign-in-Page-Marta/validdata.robot


*** Test Cases ***
Login with invalid data
    basemarta.Open Flight Application
    Click Sign In Button On Home Page
    invaliddata.Input Username
    invaliddata.Input Password
    invaliddata.Click Sign In Button On Login Page
    invaliddata.Verify User Is Fail To Logged In
    basemarta.Close Flight Application

Login with wrong username
    basemarta.Open Flight Application
    Click Sign In Button On Home Page
    wrong-username.Input Username
    wrong-username.Input Password
    wrong-username.Click Sign In Button On Login Page
    wrong-username.Verify User Is Fail To Logged In
    basemarta.Close Flight Application

Login with wrong password
    basemarta.Open Flight Application
    Click Sign In Button On Home Page
    wrong-password.Input Username
    wrong-password.Input Password
    wrong-password.Click Sign In Button On Login Page
    wrong-password.Verify User Is Fail To Logged In
    basemarta.Close Flight Application


Login with valid data
    basemarta.Open Flight Application
    Click Sign In Button On Home Page
    validdata.Input Username
    validdata.Input Password
    validdata.Click Sign In Button On Login Page

