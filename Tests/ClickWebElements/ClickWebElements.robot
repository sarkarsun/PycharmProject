*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.amazon.de/
${browser}  chrome

*** Test Cases ***
Verify basic functionality for Amazon
    [Documentation]  This test case verifies the basic functionality
    [Tags]  Functional
    Start TestCase
    Click Weblink
    Finish TestCase

*** Keywords ***
Start TestCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Click Weblink
    #Click Link  Link:Prime
    Click Link  partial link:Bests
    Sleep  4s

Finish TestCase
    Close Browser
