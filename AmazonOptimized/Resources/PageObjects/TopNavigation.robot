*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${TOP_SEARCH} =  css=#nav-search-submit-text > input
*** Keywords ***
Enter Search Item
    Input Text  id=twotabsearchtextbox  ${SEARCH_ITEM}
Submit Item
    Click Button  ${TOP_SEARCH}