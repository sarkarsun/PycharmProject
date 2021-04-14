*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/eBay_CommonFunctionality.robot
Resource  ../../Resources/eBay_Arguments/HeaderPage4.robot
Resource  ../../Resources/eBay_Arguments/SearchResultsPage4.robot

Test Setup  eBay_CommonFunctionality.Start TestCase
Test Teardown  eBay_CommonFunctionality.Finish TestCase
*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage4.Input Search Text and Click Search  Novi
    SearchResultsPage4.Verify Search Results  Novi
    Sleep  5s
Verify basic search functionality for eBay1
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage4.Input Search Text and Click Search  robot
    SearchResultsPage4.Verify Search Results  robot

Verify basic search functionality for eBay2
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage4.Input Search Text and Click Search  book
    SearchResultsPage4.Verify Search Results  book

Verify basic search functionality for eBay3
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage4.Input Search Text and Click Search  gifts
    SearchResultsPage4.Verify Search Results  gifts

