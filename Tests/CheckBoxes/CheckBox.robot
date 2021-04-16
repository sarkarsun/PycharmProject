*** Settings ***
Documentation  Basic Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic functionality for Webelements
    [Documentation]  This test case verifies the functionality of the Webelements
    [Tags]  Functional

    Open Browser  https://www.sugarcrm.com/uk/request-demo/  chrome
    Maximize Browser Window
    Sleep  4s

    Scroll Element Into View  xpath://*[@id="field1"]/div/input

    Page Should Contain Checkbox  id:interest_market_c0
    Page Should Not Contain Checkbox  id:interest_market_c00

    Select Checkbox  id:interest_market_c0
    Checkbox Should Be Selected  id:interest_market_c0
    Capture Page Screenshot
    Sleep  4s

    Unselect Checkbox  id:interest_market_c0
    Checkbox Should Not Be Selected  id:interest_market_c0
    Capture Page Screenshot

    Select Checkbox  id:interest_sell_c0
    Checkbox Should Be Selected  id:interest_sell_c0
    Capture Page Screenshot
    Sleep  4s

    Unselect Checkbox  id:interest_sell_c0
    Checkbox Should Not Be Selected  id:interest_sell_c0
    Capture Page Screenshot

    Select Checkbox  id:interest_serve_c0
    Checkbox Should Be Selected  id:interest_serve_c0
    Capture Page Screenshot
    Sleep  4s

    Unselect Checkbox  id:interest_serve_c0
    Checkbox Should Not Be Selected  id:interest_serve_c0
    Capture Page Screenshot

    Close Browser
