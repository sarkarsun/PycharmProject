*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/Amazon_UserDefinedKeywords.robot

*** Variables ***

*** Test Cases ***
Verify basic search functionality for Amazon
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Start TestCase
    Verify Search Results
    Finish TestCase

*** Keywords ***
Filter results by sort
    Mouse Over  //*[@id="a-autoid-0-announce"]
    Sleep  3s

