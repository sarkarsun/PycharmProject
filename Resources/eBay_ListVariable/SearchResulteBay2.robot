*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage1.robot
Library  SeleniumLibrary
Resource  ./Resources/eBay_ListVariable/HeaderPage2.robot

*** Variables ***
${search_result}  results for

*** Keywords ***
Verify Search Results
    Page Should Contain  ${search_result} ${search_text}[4]