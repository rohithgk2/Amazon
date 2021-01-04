*** Settings ***

Resource        C:/Users/rohit/PycharmProjects/Amazon/Libraries/Resources/XML.robot

*** Variables ***

*** Test Cases ***

Verify Count
    [Tags]  foo
    XML.Should be one menu
    XML.Food Count

Verify Food Name
    [Tags]  boo
    XML.Verify First FoodName
New Entry
    [Tags]  XML
    XML.Add Food