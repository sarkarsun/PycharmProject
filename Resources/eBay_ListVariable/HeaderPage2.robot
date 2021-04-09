*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{search_text}  Books  Robot  Music  Watch  Movies

*** Keywords ***
Input Search Text and Click Search
    Input Text  id:gh-ac  ${search_text}[4]
    Press Keys  id:gh-btn  [Return]