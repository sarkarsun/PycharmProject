*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Input Search Text and Click Search
    Input Text  id:gh-ac  mobile
    Press Keys  id:gh-btn  [Return]

Click on Advanced Search Link
    Click Element  id:gh-as-a