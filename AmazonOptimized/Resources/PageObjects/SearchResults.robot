*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SELECT_PRODUCT} =  css=a[class="a-link-normal a-text-normal"]
*** Keywords ***
Verify Search Results
    Wait Until Page Contains  results for "${SEARCH_ITEM}"

Select Product
     [Documentation]  We Select The first Product by default
     Click Link  ${SELECT_PRODUCT}
     Sleep  3s