*** Settings ***
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/Common.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/App.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/DataManager.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Data/Input.robot
Test Setup  Common.Begin Test
Test Teardown  Common.End Test

*** Test Cases ***

User needs to provide a correct credentials
    [Tags]  Data
    App.Go To Sign In Page
    App.Enter the Details  ${INVALID_EMAIL}
    App.Details Verification  ${INVALID_EMAIL.ExpectedErrorMessage}

User Cannot leave details empty
    [Tags]  Data
    App.Go To Sign In Page
    App.Enter the Details  ${BLANK_DETAILS}
    App.Details Verification  ${BLANK_DETAILS.ExpectedErrorMessage}
