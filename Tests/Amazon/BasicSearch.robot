*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify basic search functionality for Amazon
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Start TestCase
    Verify Search Results
    Finish TestCase

*** Keywords ***
Start TestCase
    Open Browser  https://www.amazon.de/  chrome
    Maximize Browser Window

Verify Search Results
    Input Text  id:twotabsearchtextbox  iphone 12 pro
    Press Keys  id: nav-search-submit-button  [Return]
    Page Should Contain  iphone 12 pro

Finish TestCase
    Close Browser