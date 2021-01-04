*** Settings ***
Documentation  This is a basic idea of the test suite
Library  SeleniumLibrary
Resource   C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/Common/CommonWeb.robot
Resource   C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/BackOffice/BackOfficeApp.robot

Test Setup  Begin Test
Test Teardown  Close Test

*** Variables ***

*** Test Cases ***
User log into Webpage
    [Documentation]  First Testcase
    [Tags]  Smoke
    Log  Page Loading

    BackOfficeApp.Webpage Loading

