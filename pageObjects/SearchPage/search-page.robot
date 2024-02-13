*** Settings ***
Resource            ../base/base.robot
Variables           ../SearchPage/search-locator.yaml
*** Keywords ***
Enter Valid Flight Number
    Wait Until Page Contains Element    locator=${flight_number_field}
    Input Text    locator=${flight_number_field}   text=DA935
Click Search Button On Search Page
    Click Element    locator=${search_btn_on_search}

Enter Invalid Flight Number 2 Characters
    Wait Until Page Contains Element    locator=${flight_number_field}
    Input Text    locator=${flight_number_field}   text=11

Verify Error Message
    Wait Until Page Contains Element    locator=${error_toaster}
