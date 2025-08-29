*** Settings ***
Resource    ../util/resources.robot
Test Setup    Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Acesso valido
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Login
    Element Should Be Visible    ${MENU_TITLE}
Acesso sem username
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Input text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${ITEM_ERROR}
    Element Should Contain    ${MESSAGE_ERROR}    Username is required
Acesso sem senha
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Input Text    ${EMAIL_FIELD}    ${USERNAME}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${ITEM_ERROR}
    Element Should Contain    ${MESSAGE_ERROR}    Password is required
Acesso username incorreto
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Input Text    ${EMAIL_FIELD}    wrong_user01
    Input Password    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${ITEM_ERROR}
    Element Should Contain    ${MESSAGE_ERROR}    Username and password do not match any user in this service
Acesso senha incorreta
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Input Text    ${PASSWORD_FIELD}    Wrong_password01
    Input Text    ${EMAIL_FIELD}    ${USERNAME}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${ITEM_ERROR}
    Element Should Contain    ${MESSAGE_ERROR}    Username and password do not match any user in this service 