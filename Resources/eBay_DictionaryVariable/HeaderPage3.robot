*** Settings ***
Library  SeleniumLibrary

*** Variables ***
&{search_text}  abc=Books  bcd=Robot

*** Keywords ***
Input Search Text and Click Search
    Input Text  id:gh-ac  ${search_text.bcd}
    Press Keys  id:gh-btn  [Return]