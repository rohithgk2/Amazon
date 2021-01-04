*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MY_VARIABLE} =  Hello Variable
${my_current_variable} =  Set Variable  I am new Variable
@{list_variable} =  Hello there  I am value 2  I am value 3
*** Test Cases ***
Variable Demonstration 1
    Log  ${MY_VARIABLE}

Variable Demonstration 2
    Log  ${my_current_variable}

Variable Demonstration 3
    ${my_new_variable} =  Set Variable  I am new Variable
    Log  ${my_new_variable}

List Variable Demonstration 1
    [Tags]  Current
    Log  @{list_variable}[0]
    Log  @{list_variable}[1]
    Log  @{list_variable}[2]
List Variable Demonstration 2
    [Tags]  Current
    @{list_variable_new} =  create list  Hello there  I am value 2  I am value 3
    Log  @{list_variable_new}[0]
    Log  @{list_variable_new}[1]
    Log  @{list_variable_new}[2]