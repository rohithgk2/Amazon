*** Settings ***
Documentation  This is a basic idea of the test suite
Resource   C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/AmazonApp.robot
Resource   C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/Common.robot
Library  Dialogs

Suite Setup  Insert Test Data
Test Setup  Begin Test
Test Teardown  End Test
Suite Teardown  Delete Test Data
*** Variables ***

${BROWSER} =  chrome
${URL} =  https://www.amazon.com
${SEARCH_ITEM} =  Toy


*** Test Cases ***
User search for product
     [Documentation]  This is some basic info about the test
     [Tags]  Web

     ${new_browser} =  Get Selections From User  Which browser?  chrome  ie  firefox
     ${BROWSER} =  set variable  ${new_browser}
     AmazonApp.Search For Product
User need not Sign in to view product
     [Documentation]  This is some basic info about the test
     [Tags]  Web


     AmazonApp.Search For Product
     AmazonApp.Select The Product