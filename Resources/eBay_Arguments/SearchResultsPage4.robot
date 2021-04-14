*** Settings ***
Library  SeleniumLibrary
Resource  ./Resources/eBay_DictionaryVariable/HeaderPage3.robot
Resource  ./Resources/eBay_Arguments/HeaderPage4.robot
*** Variables ***
${search_result}  results for

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
    Page Should Contain  ${search_result} ${search_text}