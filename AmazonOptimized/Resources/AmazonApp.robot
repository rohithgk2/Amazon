*** Settings ***
Resource  C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/PageObjects/LandingPage.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/PageObjects/TopNavigation.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/PageObjects/SearchResults.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/PageObjects/Cart.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/PageObjects/Checkout.robot
Resource  C:/Users/rohit/PycharmProjects/Amazon/AmazonOptimized/Resources/PageObjects/SignIn.robot

*** Variables ***
${username} =  Toy
${password} =  Box

*** Keywords ***
Search For Product
     LandingPage.Load
     LandingPage.Verfiy Page Loaded
     TopNavigation.Enter Search Item
     TopNavigation.Submit Item
     SearchResults.Verify Search Results

Select The Product
    SearchResults.Select Product

Add to Cart
    Cart.Add Item to Cart

Proceed to Checkout
    Checkout.Checkout the Item

SignInUser
    [Arguments]  ${username}  ${password}
    SignIn.Enter "Email"  ${username}
    SignIn.Enter "Passoword"  ${password}
    SignIn.Submit Details