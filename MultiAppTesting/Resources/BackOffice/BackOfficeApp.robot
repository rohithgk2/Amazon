*** Settings ***
Documentation  This is a common page
Library  SeleniumLibrary
Resource  C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/BackOffice/PO/BackOffice.Landing.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/BackOffice/PO/Verify.robot
*** Variables ***


*** Keywords ***

Webpage Loading
    BackOffice.Landing.Load Page
#    Landing.Verify Page
