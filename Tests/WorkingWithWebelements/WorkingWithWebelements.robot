*** Settings ***
Documentation  Basic Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic functionality for Webelements
    [Documentation]  This test case verifies the functionality of the Webelements
    [Tags]  Functional

    Open Browser  https://www.google.com/  chrome  alias=BrowserA
    Maximize Browser Window
    Sleep  4s

    ${attr}=  Get Element Attribute  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]  class
    ${count}=  Get Element Count  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    ${width}  ${height}=  Get Element Size  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Get WebElement  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    ${webelements}=  Get WebElements  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Capture Element Screenshot  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Assign Id To Element  name=btnK  ROBOTID
    Page Should Contain Element  ROBOTID

    Element Should Be Focused  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Element Should Be Visible  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Input Text  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input  Movies
    Clear Element Text  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Cover Element  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[2]
    Element Attribute Value Should Be  name:btnK  value  Google Search

    Element Should Be Enabled  name:btnK
    Element Should Not Be Visible  name:btnKgf

    Element Should Contain  How Search
    Element Should Not Contain  Google Search

    Element Text Should Be  How Search works
    Element Text Should Not Be  How Search

    Double Click Element  xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[4]
    Click Element At Coordinates  xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[1]  15  10

    Close Browser















