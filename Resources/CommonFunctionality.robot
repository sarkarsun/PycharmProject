*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start TestCase
    Open Browser  https://www.amazon.de/  chrome
    Maximize Browser Window

Finish TestCase
    Close Browser