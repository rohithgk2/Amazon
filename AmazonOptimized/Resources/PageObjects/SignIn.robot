*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Enter "Email"
    [Arguments]  ${username}
    Log  Usernamegiven
Enter "Passoword"
    [Arguments]  ${password}
    Log  PassowrdGiven
Submit Details
    Log  Submit