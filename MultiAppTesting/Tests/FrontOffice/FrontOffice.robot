*** Settings ***
Documentation  This is a basic idea of the test suite
Library  SeleniumLibrary
Resource   C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/Common/CommonWeb.robot
Resource   C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/FrontOffice/FrontOfficeApp.robot

Test Setup  Begin Test
Test Teardown  Close Test

*** Variables ***

*** Test Cases ***
User log into Webpage
    [Documentation]  First Testcase
    [Tags]  Smoke
    Log  Page is Loading Now

    FrontOfficeApp.Webpage Loading

User Makes a selection
    [Documentation]  Second Testcase
    [Tags]  Smoke
    Log  This is the testcase for selection
    FrontOfficeApp.Webpage Loading
    FrontOfficeApp.Option Selection

User log into Webpage
    [Documentation]  Third Testcase
    [Tags]  Current
    Log  Verification of selection

    FrontOfficeApp.Webpage Loading
    FrontOfficeApp.Option Selection
    Sleep  3s
    FrontOfficeApp.Option Verification

Feature2 Test
    Log  I am feature 2