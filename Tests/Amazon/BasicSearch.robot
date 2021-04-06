*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Open Browser  https://www.amazon.de/  chrome
    Maximize Browser Window

    Input Text  id:twotabsearchtextbox  iphone 12 pro
    Press Keys  id: nav-search-submit-button  [Return]
    Page Should Contain  iphone 12 pro
    Close Browser
*** Keywords ***