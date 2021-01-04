*** Settings ***
Documentation  This is a basic idea of the test suite
Library  SeleniumLibrary
Library  String

*** Variables ***

*** Test Cases ***

For Loop Initial
    [Tags]  Loops
    :FOR  ${INDEX}  IN RANGE  5
    \   Log  ${INDEX}

For Loop in List
    [Tags]  Loops
    ${ITEMS} =  create list  items1  item2  item3
    :FOR  ${ITEM}  IN  ${ITEMS}
    \   Log  ${ITEM}
Loop Exiting
    [Tags]  Loops
    @{ITEMS} =  create list  items1  item2  item3
    :FOR  ${ITEM}  IN  @{ITEMS}
    \   Log  ${ITEM}
    \   run keyword if  "${ITEM}" == "item2"  EXIT FOR LOOP
Repeat Keyword many times
    [Tags]  Loops
    repeat keyword  5 times  Repeatable



*** Keywords ***
Repeatable
    Log  I will repeat