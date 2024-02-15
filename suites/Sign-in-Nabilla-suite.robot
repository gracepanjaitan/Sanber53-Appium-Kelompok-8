*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/Sign-in-Nabilla-page/invalid-blank.robot
Resource             ../pageObjects/Sign-in-Nabilla-page/valid-blank.robot


*** Test Cases ***
Login With Invalid Username And Blank Password
    Open Flight Application
    invalid-blank.Click Sign In Button On Home Page
    invalid-blank.Input Username
    invalid-blank.Click Sign In Button On Login Page
    invalid-blank.Verify User Is Fail To Logged In
    Close Flight Application

Login With Blank Username And Invalid Password
    Open Flight Application
    invalid-blank.Click Sign In Button On Home Page
    invalid-blank.Input Username
    invalid-blank.Click Sign In Button On Login Page
    invalid-blank.Verify User Is Fail To Logged In
    Close Flight Application

Login With Valid Username And Blank Password
    Open Flight Application
    valid-blank.Click Sign In Button On Home Page
    valid-blank.Input Username
    valid-blank.Click Sign In Button On Login Page
    valid-blank.Verify User Is Fail To Logged In
    Close Flight Application

Login With Blank Username And Valid Password
    Open Flight Application
    valid-blank.Click Sign In Button On Home Page
    valid-blank.Input Password
    valid-blank.Click Sign In Button On Login Page
    valid-blank.Verify User Is Fail To Logged In
    Close Flight Application
    
Login With Blank Username And Blank Password
    Open Flight Application
    invalid-blank.Click Sign In Button On Home Page
    invalid-blank.Click Sign In Button On Login Page
    invalid-blank.Verify User Is Fail To Logged In
    Close Flight Application
