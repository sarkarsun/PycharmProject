*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Resource  ../../Resources/eBay_CommonFunctionality.robot


Test Setup  eBay_CommonFunctionality.Start TestCase
Test Teardown  eBay_CommonFunctionality.Finish TestCase

*** Variables ***
@{search_text}  Books  Robot  Music  Watch  Movies
${search_result}  results for

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Input Search Text and Click Search
    Verify Search Results

*** Keywords ***

Input Search Text and Click Search
    Input Text  id:gh-ac  ${search_text}[4]
    Press Keys  id:gh-btn  [Return]

Verify Search Results
    Page Should Contain  ${search_result} ${search_text}[4]
