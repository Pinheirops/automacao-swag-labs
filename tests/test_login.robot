*** Settings ***
Resource    ../util/resources.robot
Test Setup    Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Login com credencial valida
    Wait Until Element Is Visible    ${titulo-login}
    Login
    Wait Until Location Contains    https://www.saucedemo.com/inventory.html    timeout=10s
    ${url_inicio}=    Get Location
    Should Be Equal    ${url_inicio}    https://www.saucedemo.com/inventory.html

Login com senha incorreta
    Wait Until Element Is Visible    ${titulo-login}
    Input Text    ${campo-usuario}    ${USERNAME}
    Input Text    ${campo-senha}    senhaIncorreta
    Click Element    ${botao-login}
    Wait Until Element Is Visible    ${item-error}
    Element Should Contain    ${mensagem-erro}    Epic sadface: Username and password do not match any user in this service

Login com campo vazio
    Wait Until Element Is Visible    ${titulo-login}
    Input Text    ${campo-senha}    ${USERNAME}
    Click Element    ${botao-login}
    Wait Until Element Is Visible    ${item-error}
    Element Should Contain    ${mensagem-erro}    Epic sadface: Username is required

Login bloqueado
    Wait Until Element Is Visible    ${titulo-login}
    Input Text    ${campo-usuario}    locked_out_user
    Input Password    ${campo-senha}    ${PASSWORD}
    Click Element    ${botao-login}
    Wait Until Element Is Visible    ${item-error}
    Element Should Contain    ${mensagem-erro}    Epic sadface: Sorry, this user has been locked out.