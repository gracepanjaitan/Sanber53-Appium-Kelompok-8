*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/LoginPage/login-page.robot
Resource             ../pageObjects/BookingPage/booking-page.robot

*** Test Cases ***
Booking a Flight With Valid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    login-page.Input Password
    Click Sign In Button On Login Page
    Click Booking Button 
