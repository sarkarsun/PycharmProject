*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text  id:gh-ac  mobile
    Press Keys  id:gh-btn  [Return]
    Page Should Contain  results for mobile

Click on Advanced Search Link
    Click Element  id:gh-as-a
