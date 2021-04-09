*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/eBay_CommonFunctionality.robot
Resource  ../../Resources/eBay_ScalarVariablePOM/HeaderPage1.robot
Resource  ../../Resources/eBay_ScalarVariablePOM/SearchResulteBay.robot

Test Setup  eBay_CommonFunctionality.Start TestCase
Test Teardown  eBay_CommonFunctionality.Finish TestCase
Documentation   Basic Search Functionality
Resource  ../../Resources/eBay_CommonFunctionality.robot
Resource  ../../Resources/eBay_ScalarVariablePOM/HeaderPage1.robot
Resource  ../../Resources/eBay_ScalarVariablePOM/SearchResulteBay.robot

Test Setup  eBay_CommonFunctionality.Start TestCase
Test Teardown  eBay_CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage1.Input Search Text and Click Search
    SearchResulteBay.Verify Search Results
