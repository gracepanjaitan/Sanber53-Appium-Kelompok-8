*** Settings ***
Resource            ../base/base.robot
Variables           ../SearchPage/search-locator.yaml
*** Keywords ***
Enter Valid Flight Number
    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]   text=DA935
Click Search Button On Search Page
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
