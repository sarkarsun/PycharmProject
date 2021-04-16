*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Variables  ../../Resources/Webelements/Webelements.py

*** Variables ***

*** Test Cases ***
Verify basic search functionality for Amazon
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional
    Start TestCase
    Verify Search result

Verify Advanced Search Functionality for Amazon
    [Documentation]  This test case verifies the Advanced search
    [Tags]  Functional
    Verify Advanced Search Functionality

    Finish TestCase

*** Keywords ***
Start TestCase
    Open Browser  ${HomePageURL}  ${HomePageBrowser}
    Maximize Browser Window

Verify Search result
    Input Text  ${HomePageSearchTextBox}  ${HomePageSearchText}
    Press Keys  ${HomePageSearchButton}  [return]
    Page Should Contain  ${HomePageSearchText}
    Sleep  4s

Verify Advanced Search Functionality
    Click Element  ${HomePageAdvancedFunc}
    Sleep  4s

Finish TestCase
    Close Browser
