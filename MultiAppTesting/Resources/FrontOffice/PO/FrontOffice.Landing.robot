*** Settings ***
Documentation  This is a common page
Library  SeleniumLibrary

*** Variables ***

${FRONT_LINK_URL} =  http://www.robotframeworktutorial.com/front-office/

*** Keywords ***

Load Page
    Go To  ${FRONT_LINK_URL}
Verify Page
    Wait Until Page Contains  Welcome To Our Studio!