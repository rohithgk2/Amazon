*** Settings ***
Documentation  This is a basic idea of the test suite
Library  SeleniumLibrary
*** Variables ***
${ENV} =  amazon
&{URLS}  facebook=https://www.facebook.com  amazon=https://www.amazon.com

*** Test Cases ***
Example Dictionary
    [Tags]  Dicts
    Open Browser  ${URLS.${ENV}}  chrome