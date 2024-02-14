*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/LoginPage/login-page.robot
Resource             ../pageObjects/BookingPage/booking-page.robot

*** Test Cases ***   
Fill All Field With Choose Price Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password User
    Click Sign In Button On Login Page
    Click Booking Button 
    Choose Type of Booking Flight
    Click Field From City
    Click Field To City
    Click Field To Status
    Click Field Start Date
    Click Field End Date
    Choose Radio Button
    Click Book Button
    Choose Price
    Click Confirm Button
    Close Flight Application

Fill All Field and Didn't Choose Price Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password User
    Click Sign In Button On Login Page
    Click Booking Button 
    Choose Type of Booking Flight
    Click Field From City
    Click Field To City
    Click Field To Status
    Click Field Start Date
    Click Field End Date
    Choose Radio Button
    Click Book Button
    Click Confirm Button
    Close Flight Application

Didn't Fill All Field and Choose Prices
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password User
    Click Sign In Button On Login Page
    Click Booking Button
    Choose Type of Booking Flight
    Click Book Button
    Choose Price
    Click Confirm Button
    Close Flight Application

Didn't Fill All Field and Didn't Choose Price
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password User
    Click Sign In Button On Login Page
    Click Booking Button
    Choose Type of Booking Flight
    Click Book Button
    Click Confirm Button
    Close Flight Application
