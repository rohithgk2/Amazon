*** Settings ***
Documentation  This is a basic idea of the test suite
Library  SeleniumLibrary
Resource   C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/Common/CommonWeb.robot
Resource   C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/BackOffice/BackOfficeApp.robot
Resource   C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/FrontOffice/FrontOfficeApp.robot

Test Setup  Begin Test
Test Teardown  Close Test

*** Variables ***

*** Test Cases ***
Should be able to access both sites
    [Documentation]  First Testcase
    [Tags]  Smoke
    Log  Page Loading
    FrontOfficeApp.Webpage Loading
    BackOfficeApp.Webpage Loading

