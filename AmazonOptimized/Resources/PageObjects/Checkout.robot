*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${CHECKOUT_BUTTON} =        xpath=//*[@id="hlb-ptc-btn-native"]

*** Keywords ***
Checkout the Item
    Click Button  css=a[class="a-button-text a-text-center"]
    Wait Until Page Contains  Sign-In