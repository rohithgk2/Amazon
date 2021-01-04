*** Settings ***
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/Common.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/App.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Resources/DataManager.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/Data/Input.robot
Test Setup  Common.Begin Test
Test Teardown  Common.End Test

*** Test Cases ***
User needs to provide a correct credentials
    ${INVALID_USER_DATA} =  DataManager.Get Csv Data  ${INCORRECT_CSV_PATH}
    App.Excel Driven Test For Checking Erro Messages  ${INVALID_USER_DATA}