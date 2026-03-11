*** Settings ***    #    importacao de bibliotecas
Library    SeleniumLibrary
Library    Collections
Resource    resources.robot

*** Keywords ***    #    Test Setup e Test Teardown
Preparar ambiente de teste
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Realizar login    ${USUARIO}    ${SENHA}
Abrir navegador
    Open Browser    https://www.saucedemo.com/    chrome
    Wait Until Element Is Visible    ${titulo-login}
    Maximize Browser Window
Fechar navegador
    Close Browser