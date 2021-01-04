*** Settings ***
Documentation  This is a basic idea of the test suite
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
User must sign in to checkout
     [Documentation]  This is some basic info about the test
     [Tags]  Smoke Log Check
     Open Browser  https://www.amazon.com  chrome
     Mouse Over  id=nav-link-accountList
     Sleep  3s
     Click Link  Account
#     Click Link  Click here to jump to updates by date
#     Input Text  id=twotabsearchtextbox  Ferrari
#     Click Button  css=#nav-search-submit-text > input
#     Wait Until Page Contains  results for "Ferrari"
#     Click Link  css=a[class="a-link-normal a-text-normal"]
#     Sleep  3s
#     Click Button  Add to Cart
#     Sleep  3s
#     Click Button  css=a[class="a-button-text a-text-center"]
#     Wait Until Page Contains  Sign-In


*** Keywords ***
