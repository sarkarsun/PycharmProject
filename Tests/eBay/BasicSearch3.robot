*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/eBay_CommonFunctionality.robot
Resource  ../../Resources/eBay_PageObjectModel/HeaderPage.robot
Resource  ../../Resources/eBay_PageObjectModel/SearchResultsPage.robot

Test Setup  eBay_CommonFunctionality.Start TestCase
Test Teardown  eBay_CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results


Verify Advanced search functionality for eBay
    [Documentation]  This test case verifies the Advanced search
    [Tags]  Functional
    HeaderPage.Click on Advanced Search Link