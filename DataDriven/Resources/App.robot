*** Settings ***
#Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/PO/SignIn.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/PO/SignInExcel.robot

*** Keywords ***
Excel Driven Test For Checking Erro Messages
    [Arguments]  ${INVALID_USER_DATA}
    :FOR  ${LOGIN_SCENERIO}  IN   @{INVALID_USER_DATA}
    \  SignInExcel.Navigate to Webiste
    \  SignInExcel.Enter Credentials  ${LOGIN_SCENERIO}
    \  SignInExcel.Submit Details
    \  SignInExcel.Verify Error Message  ${LOGIN_SCENERIO}

Test Incorrect Logins
    [Arguments]  ${Credentials}
    SignIn.Navigate to Webiste
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Submit Details
    SignIn.Verify Error Message  ${Credentials.ExpectedErrorMessage}

Go To Sign In Page
    SignIn.Navigate to Webiste

Enter the Details
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Submit Details
Details Verification
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}
