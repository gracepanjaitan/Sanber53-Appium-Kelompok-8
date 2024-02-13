*** Settings ***
Resource                               ../base/base.robot
Variables                              booking-locator.yaml

*** Keywords ***
Click Booking Button 
    Wait Until Element Is Visible      locator=${booking_btn}
    Click Element                      locator=${booking_btn}

Click Element From City
Click Element To City
Click Element Class
Input Start Date
Input End Date
