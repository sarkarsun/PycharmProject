*** Settings ***

*** Variables ***
${VARIABLE_DEMO} =  This is GLOBAL Variable
*** Test Cases ***
This is demo Test 1
    ${variable_demo} =  Set Variable  This is TESTCASE variable
    Log  ${VARIABLE_DEMO}
This is demo Test 2
    Log  ${VARIABLE_DEMO}

This is demo Test 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]  ${variable_demo}= This is KEYWORD variable
    log  ${VARIABLE_DEMO}

