*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text  id:twotabsearchtextbox  iphone 12 pro
    Press Keys  id: nav-search-submit-button  [Return]
    Page Should Contain  iphone 12 pro