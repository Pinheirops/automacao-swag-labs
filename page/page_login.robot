*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***    #   keywords dos testes de login

Realizar login
    [Arguments]    ${usuario}    ${senha}
    Input Text    ${campo-usuario}    ${usuario}
    Input Text    ${campo-senha}    ${senha}
    Click Button    ${botao-login}