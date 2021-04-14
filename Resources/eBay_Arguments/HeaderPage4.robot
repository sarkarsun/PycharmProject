*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  id:gh-ac    ${search_text}
    Press Keys  id:gh-btn  [Return]