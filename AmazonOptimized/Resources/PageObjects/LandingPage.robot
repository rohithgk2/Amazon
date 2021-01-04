*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${URL}
Verfiy Page Loaded
    Wait Until Page Contains  Amazon Pay