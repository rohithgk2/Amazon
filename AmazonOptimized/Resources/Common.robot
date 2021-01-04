*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Test
     Open Browser  https://www.google.com  ${BROWSER}
     Sleep  3s

End Test
     Close Browser

Insert Test Data
    Log  I am inserting new Data

Delete Test Data
    Custom Key

Custom Key
    Log  I will detele Data