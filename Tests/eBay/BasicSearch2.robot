*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/eBay_CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot


Test Setup  eBay_CommonFunctionality.Start TestCase
Test Teardown  eBay_CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    eBay_UserDefinedKeywords.Verify Search Results


Verify Advanced search functionality for eBay
    [Documentation]  This test case verifies the Advanced search
    [Tags]  Functional
    eBay_UserDefinedKeywords.Click on Advanced Search Link
