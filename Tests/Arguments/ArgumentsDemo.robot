*** Settings ***

*** Test Cases ***
Arguments demo keyword test
    Arguments demo keyword  Tallinn  University

Arguments demo keyword test2
    Arguments demo keyword  Game  Night


*** Keywords ***
Arguments demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}