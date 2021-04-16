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

    Page Should Contain Radio Button    xpath://*[@id="doi0"]
    Page Should Not Contain Radio Button    xpath://*[@id="doi00"]

    Radio Button Should Not Be Selected  doi

    Scroll Element Into View  xpath://*[@id="field1"]/div/input

    Select Radio Button  doi  0
    Sleep  4s

    Radio Button Should Be Set To  doi  0

    Close Browser
