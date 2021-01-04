*** Settings ***
Documentation  This is a common page
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***

Search Option
    Click Link  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
