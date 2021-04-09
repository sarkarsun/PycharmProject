*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage1.robot

*** Variables ***
${search_result}  results for

*** Keywords ***
Verify Search Results
    Page Should Contain  ${search_result} ${search_text}