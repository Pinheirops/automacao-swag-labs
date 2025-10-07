*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***    #   keywords dos testes de login

Login
    Input Text    ${campo-usuario}    ${USERNAME}
    Input Text    ${campo-senha}    ${PASSWORD}
    Click Button    ${botao-login}
