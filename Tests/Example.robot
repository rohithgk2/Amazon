*** Settings ***
Documentation  This is a basic idea of the test suite
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
User must sign in to checkout
     [Documentation]  This is some basic info about the test
     [Tags]  Smoke

     Open Browser  https://www.myntra.com  chrome
#     Input Text  css=input[class="desktop-searchBar"]  Tshirt
#     Click Link  xpath=//a[@class="desktop-submit"]
     Mouse Over  xpath=//a[contains(text(),"Men")]
     Sleep  3s