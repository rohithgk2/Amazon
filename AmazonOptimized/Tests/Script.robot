*** Settings ***
Documentation  This is a basic idea of the test suite
Resource   C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/AmazonApp.robot
Resource   C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/Common.robot

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
     [Tags]  Smoke


     AmazonApp.Search For Product
User need not Sign in to view product
     [Documentation]  This is some basic info about the test
     [Tags]  Smoke


     AmazonApp.Search For Product
     AmazonApp.Select The Product

User must sign in to checkout
     [Documentation]  This is some basic info about the test
     [Tags]  Current

     AmazonApp.Search For Product
     AmazonApp.Select The Product
     AmazonApp.Add to Cart
     AmazonApp.Proceed to Checkout
     AmazonApp.SignInUser

