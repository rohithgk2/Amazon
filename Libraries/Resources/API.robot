*** Settings ***

Library  RequestsLibrary
Library  SeleniumLibrary
Library  C:/Users/rohit/PycharmProjects/Amazon/Libraries/CustomLibrary/MyCustomLibrary.py
*** Variables ***

*** Keywords ***

Do Something Custom
    Do Something Special

Check GitHub Username

    create session  my_github_session  https://api.github.com

    ${response} =  get request  my_github_session  users/mojombo


    should be equal as strings  ${response.status_code}  200

    ${json} =  set variable  ${response.json()}

    should be equal as strings  ${json['login']}  mojombo

    Log  ${json}

    [Return]  Hurrai

Emoji Open

    create session  my_github_session  https://api.github.com
    ${response} =  get request  my_github_session  emojis
    should be equal as strings  ${response.status_code}  200
    ${json} =  set variable  ${response.json()}
    Open Browser  ${json['coffee']}  chrome