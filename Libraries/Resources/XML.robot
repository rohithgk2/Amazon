*** Settings ***

Library  XML

*** Variables ***

${FILE_PATh} =  C:/Users/rohit/PycharmProjects/Amazon/Libraries/Resources/Inputs/menu.xml
${MENU_COUNT} =  1
${FOOD_COUNT} =  3

*** Keywords ***

Should be one menu

    ${expected_count} =  get element count  ${FILE_PATh}
    should be equal as numbers  ${MENU_COUNT}  ${expected_count}

Food Count
    ${expected_count} =  get element count  ${FILE_PATh}  food
    should be equal as numbers  ${FOOD_COUNT}  ${expected_count}

Verify First FoodName
    ${expected_name} =  get element text  ${FILE_PATh}  food[1]/name
    should be equal as strings  ${expected_name}  Idly
Add Food
    ${new_detail} =  parse xml  ${FILE_PATh}
    add element  ${new_detail}  <food></food>
    add element  ${new_detail}  <name>Vada</name>
    add element  ${new_detail}  <price>10</price>
    add element  ${new_detail}  <calories>300</calories>
    save xml  ${new_detail}  ${FILE_PATh}