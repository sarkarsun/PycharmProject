*** Settings ***
Documentation  Basic Functionality
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.sugarcrm.com/uk/request-demo/
${browser}  chrome

*** Test Cases ***
Verify basic functionality for Webelements
    [Documentation]  This test case verifies the functionality of the Lists
    [Tags]  Functional

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  4s

    Scroll Element Into View  xpath://*[@id="field1"]/div/input
    Sleep  4s

    Page Should Contain List  xpath://*[@id="field27"]/div/select
    Page Should Not Contain List  xpath://*[@id="field27"]/div/selectt

    @{allItems}=  Get List Items  xpath://*[@id="field27"]/div/select
    ${ListLabel}=  Get Selected List Labels  xpath://*[@id="field27"]/div/select
    ${ListValue}=  Get Selected List Value  xpath://*[@id="field27"]/div/select
    Capture Page Screenshot

    List Selection Should be  xpath://*[@id="field27"]/div/select  Company Size*

    Select From List By Index  xpath://*[@id="field27"]/div/select  1
    ${LLabel1}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
    Capture Page Screenshot
    Sleep  2s

    Select From List By Label  xpath://*[@id="field27"]/div/select  101 – 250 employees
    ${LLabel2}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
    Capture Page Screenshot
    Sleep  2s

    Select From List By Value  xpath://*[@id="field27"]/div/select  level7
    ${LLabel3}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
    Capture Page Screenshot
    Sleep  2s

# Multiselect Lists
    Go To  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Select Frame  id:iframeResult
    Select All From List  xpath://*[@id="cars"]
    Capture Page Screenshot
    Sleep  2s

    @{ListLabels}=  Get Selected List Labels  xpath://*[@id="cars"]
    Capture Page Screenshot
    Sleep  2s
    Unselect From List By Value  xpath://*[@id="cars"]  volvo
    Sleep  2s

    Unselect From List By Index  xpath://*[@id="cars"]  3
    Sleep  2s

    Unselect From List By Label  xpath://*[@id="cars"]  Audi
    Sleep  2s

    @{ListValues}=  Get Selected List Values  xpath://*[@id="cars"]
    Capture Page Screenshot
    Sleep  2s


    Unselect All From List  xpath://*[@id="cars"]
    Sleep  2s

    List Should Have No Selections  xpath://*[@id="cars"]
    Capture Page Screenshot

    Close Browser


