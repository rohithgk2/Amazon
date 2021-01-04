*** Settings ***
Documentation  This is the page for common setup
Library  SeleniumLibrary

*** Variables ***

${VERIFICATION_TEXT} =  //*[@id="team"]/div/div[1]/div/h2

*** Keywords ***

Verify Selection
    Wait Until Page Contains Element  ${VERIFICATION_TEXT}
