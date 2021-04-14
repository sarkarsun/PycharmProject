*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.ebay.com/
${browser}  chrome
${search_text}  iphone 12 pro

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional
    Start TestCase
    Verify Search result

Verify Advanced Search Functionality for eBay
    [Documentation]  This test case verifies the Advanced search
    [Tags]  Functional
    Verify Advanced Search Functionality

    Finish TestCase

*** Keywords ***
Start TestCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Verify Search result
    Input Text  id:gh-ac  ${search_text}
    Press Keys  id:gh-btn  [return]
    Page Should Contain  ${search_text}
    Sleep  4s

Verify Advanced Search Functionality
    Click Element  id:gh-as-a
    Sleep  3s

Finish TestCase
    Close Browser




