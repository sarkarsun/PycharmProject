*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}  robot

*** Keywords ***
Input Search Text and Click Search
    Input Text  id:gh-ac  ${search_text}
    Press Keys  id:gh-btn  [Return]