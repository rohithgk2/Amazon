*** Settings ***
Library  SeleniumLibrary
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Data/Input.robot
*** Keywords ***

Begin Test

    Open Browser  about:blank  ${BROWSER}

End Test
    Close Browser