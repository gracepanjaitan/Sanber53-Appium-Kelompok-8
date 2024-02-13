*** Settings ***
Resource        ../pageObjects/HomePage/home-page.robot
Resource        ../pageObjects/LoginPage/login-page.robot
Resource        ../pageObjects/SearchPage/search-page.robot
Resource        ../pageObjects/SearchPage/valid-search-result-page.robot

*** Test Cases ***
Search with Valid Flight Number
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password User
    Click Sign In Button On Login Page
    Verify User Is Succesfully Logged In
    Click Search Button On Home Page
    Enter Valid Flight Number
    Click Search Button On Search Page
    Verify the Flight Data Shown
    Close Flight Application
Search with Invalid Flight Number "Input with just 2 Characters"
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password User
    Click Sign In Button On Login Page
    Verify User Is Succesfully Logged In
    Click Search Button On Home Page
    Enter Invalid Flight Number 2 Characters
    Click Search Button On Search Page
    Verify Error Message
    Close Flight Application

