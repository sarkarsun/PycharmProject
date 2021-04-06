*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/Amazon_UserDefinedKeywords.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase
*** Variables ***

*** Test Cases ***
Verify basic search functionality for Amazon
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Amazon_UserDefinedKeywords.Verify Search Results