*** Settings ***
Documentation  This is the data Manager
Library  C:/Users/rohit/PycharmProjects/Amazon/DataDriven/CustomLib/Csv.py

*** Keywords ***

Get Csv Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    [Return]  ${Data}