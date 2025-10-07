*** Settings ***    #    importacao de bibliotecas
Library    SeleniumLibrary
Library    Collections
Resource    resources.robot

*** Keywords ***    #    Test Setup e Test Teardown
Preparar ambiente de teste
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Input Text    ${campo-usuario}    ${USERNAME}
    Input Text    ${campo-senha}    ${PASSWORD}
    Click Button    ${botao-login}
Abrir navegador
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
Fechar navegador
    Close Browser