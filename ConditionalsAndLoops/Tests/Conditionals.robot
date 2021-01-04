*** Settings ***
Documentation  This is a basic idea of the test suite
Library  SeleniumLibrary
*** Variables ***
${MAX_VALUE} =  100
*** Test Cases ***

Checking If Statement
    [Tags]  Conditionals

    Run Keyword if  ${MAX_VALUE} < 200  keyword1

Checking If Else Statement
    [Tags]  Conditionals

    run keyword if  ${MAX_VALUE} > 200  keyword1  ELSE   keyword2

Checking If Else IF ELSE Statement
    [Tags]  Conditionals

    run keyword if  ${MAX_VALUE} > 200  keyword1  ELSE IF  ${MAX_VALUE} < 50  keyword2  ELSE  keyword3
*** Keywords ***

keyword1
    Log  I am Keyword 1
keyword2
    Log  I am Keyword 2
keyword3
    Log  I am Keyword 3