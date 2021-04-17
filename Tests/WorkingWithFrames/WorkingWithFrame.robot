*** Settings ***
Documentation  Basic Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic functionality for Webelements
    [Documentation]  This test case verifies the functionality of the frames
    [Tags]  Functional

    Open Browser  https://www.w3schools.com/html/tryit.asp?filename=tryhtml_default  chrome
    Maximize Browser Window
    Sleep  4s

    Select Frame  id:iframeResult
    Current Frame Should Contain  This is a Heading
    Current Frame Should Not Contain  HTML Confirm Box

    Unselect Frame
    Frame Should Contain  id:iframeResult  This is a Heading


    Close Browser