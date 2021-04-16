*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.amazon.de/
${browser}  chrome
${search_text}  Apple MacBook Pro
${search_textbox}  id:twotabsearchtextbox
${press_keys}  id:nav-search-submit-button
${click_elements}  //*[@id="icp-nav-flyout"]/span

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
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Verify Search result
    Input Text  ${search_textbox}  ${search_text}
    Press Keys  ${press_keys}  [return]
    Page Should Contain  ${search_text}
    Sleep  4s

Verify Advanced Search Functionality
    Click Element  ${click_elements}
    Sleep  4s

Finish TestCase
    Close Browser
