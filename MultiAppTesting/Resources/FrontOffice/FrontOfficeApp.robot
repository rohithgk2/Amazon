*** Settings ***
Documentation  This is a common page
Library  SeleniumLibrary
Resource  C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/FrontOffice/PO/FrontOffice.Landing.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/FrontOffice/PO/Selection.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/MultiAppTesting/Resources/FrontOffice/PO/Verify.robot
*** Variables ***


*** Keywords ***

Webpage Loading
    FrontOffice.Landing.Load Page
#    FrontOffice.Landing.Verify Page
Option Selection
    Selection.Search Option
Option Verification
    Verify.Verify Selection