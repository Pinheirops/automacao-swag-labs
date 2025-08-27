*** Settings ***
Resource    ../util/resources.robot

*** Test Cases ***
Login com sucesso
    Open Browsers
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Valid_login
    Confirm
    Element Should Be Visible    ${MENU_TITLE}
    Close Browsers

Login sem username
    Open Browsers
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Blank_username
    Confirm
    Wait Until Element Is Visible    ${ITEM_ERROR}
    Element Should Contain    ${MESSAGE_ERROR}    Username is required

Login sem password
    Open Browsers
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Blank_password
    Confirm
    Wait Until Element Is Visible    ${ITEM_ERROR}
    Element Should Contain    ${MESSAGE_ERROR}    Password is required

Login com username errado
    Open Browsers
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Wrong_username
    Input Password    ${PASSWORD_FIELD}    ${PASSWORD}
    Confirm
    Wait Until Element Is Visible    ${ITEM_ERROR}
    Element Should Contain    ${MESSAGE_ERROR}    Username and password do not match any user in this service

Login com password errado
    Open Browsers
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Wrong_password
    Input Text    ${EMAIL_FIELD}    ${USERNAME}
    Confirm
    Wait Until Element Is Visible    ${ITEM_ERROR}
    Element Should Contain    ${MESSAGE_ERROR}    Username and password do not match any user in this service