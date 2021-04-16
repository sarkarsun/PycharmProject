*** Settings ***
Documentation  Basic Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic functionality for Website
    [Documentation]  This test case verifies the functionality of the browsers
    [Tags]  Functional
    Start TestCase

*** Keywords ***
Start TestCase
    Open Browser  https://www.bing.com/  chrome  alias=BrowserA
    Maximize Browser Window

    Open Browser  about:blank  ff  alias=BrowserB

    &{alias}  Get Browser Aliases

    Log  ${alias.BrowserA}

    @{browser_ids}  Get Browser Ids
    Log  ${browser_ids}[1]

    Switch Browser  1

    Input Text  xpath://*[@id="sb_form_q"]  ROBOT

    Sleep  4s

    Switch Browser  ${alias}[BrowserB]

    Go To  https://www.salesforce.com/

    Close All Browsers

