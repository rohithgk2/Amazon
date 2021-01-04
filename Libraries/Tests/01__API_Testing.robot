*** Settings ***

Resource        C:/Users/rohit/PycharmProjects/Amazon/Libraries/Resources/API.robot

*** Variables ***

*** Test Cases ***

Make API CALL
    [Tags]  API
    ${ReturnedInfo} =  API.Check GitHub Username
    Do Something Custom
    log  ${ReturnedInfo}
Display Emoji
    [Tags]  APi
    API.Emoji Open