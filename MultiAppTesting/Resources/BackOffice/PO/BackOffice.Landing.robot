*** Settings ***
Documentation  This is a common page
Library  SeleniumLibrary

*** Variables ***

${BACK_LINK_URL} =  http://www.robotframeworktutorial.com/back-office/

*** Keywords ***

Load Page
    Go To  ${BACK_LINK_URL}
Verify Page
    Wait Until Page Contains  Welcome To Our Studio!