*** Settings ***
Documentation  This is a common page
Library  SeleniumLibrary

*** Variables ***

${URL} =  http://www.google.com
${BROWSER} =  chrome

*** Keywords ***

Begin Test
    Open Browser  ${URL}  ${BROWSER}

Close Test
    Close Browser