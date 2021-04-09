*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/eBay_CommonFunctionality.robot
Resource  ../../Resources/eBay_DictionaryVariable/HeaderPage3.robot
Resource  ../../Resources/eBay_DictionaryVariable/SearchResults3.robot

Test Setup  eBay_CommonFunctionality.Start TestCase
Test Teardown  eBay_CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage3.Input Search Text and Click Search
    SearchResults3.Verify Search Results