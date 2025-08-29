*** Settings ***
Library    SeleniumLibrary
Resource    resources.robot
*** Keywords ***
Preparar ambiente de teste
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Input Text    ${EMAIL_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
Abrir navegador
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
Fechar navegador
    Close Browser