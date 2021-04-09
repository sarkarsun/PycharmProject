*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/eBay_CommonFunctionality.robot
Resource  ../../Resources/eBay_ListVariable/HeaderPage2.robot
Resource  ../../Resources/eBay_ListVariable/SearchResulteBay2.robot

Test Setup  eBay_CommonFunctionality.Start TestCase
Test Teardown  eBay_CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage2.Input Search Text and Click Search
    SearchResulteBay2.Verify Search Results