*** Settings ***
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Data/Input.robot

*** Variables ***
${SIGN_IN_EMAIL} =  css=input[id='ap_email']
${SIGN_IN_PASSWORD} =  css=input[id="ap_password"]
${SUBMIT} =  css=input[id='signInSubmit']

*** Keywords ***

Navigate to Webiste
    Go To  ${URL}

Enter Credentials
    [Arguments]  ${Credentials}
    run keyword unless  '${Credentials.Email}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials.Email}
    run keyword unless  '${Credentials.Password}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials.Password}

Submit Details
    Click Button  ${SUBMIT}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Wait Until Page Contains  ${ExpectedErrorMessage}