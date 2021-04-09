*** Settings ***
Library  SeleniumLibrary
Resource  ./Resources/eBay_DictionaryVariable/HeaderPage3.robot

*** Variables ***
${search_result}  results for

*** Keywords ***
Verify Search Results
    Page Should Contain  ${search_result} ${search_text.bcd}