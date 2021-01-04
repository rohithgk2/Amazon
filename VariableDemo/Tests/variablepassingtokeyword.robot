*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{LIST_VARIABLE} =  http:///www.amazon.com  chrome
*** Test Cases ***
Test Case 1
    Begin Test  @{LIST_VARIABLE}

*** Keywords ***
Begin Test
    [Arguments]  @{LIST_VARIABLE}
    Open Browser  @{LIST_VARIABLE}[0]  @{LIST_VARIABLE}[1]
    Close Browser