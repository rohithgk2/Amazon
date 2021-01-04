*** Settings ***
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/Common.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/App.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Data/Input.robot
Test Setup  Common.Begin Test
Test Teardown  Common.End Test

*** Test Cases ***
Incorrect Loggin create correct error message
    [Template]  Test Incorrect Logins
    ${INVALID_EMAIL}
    ${BLANK_DETAILS}