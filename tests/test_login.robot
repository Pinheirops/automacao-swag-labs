*** Settings ***
Resource    ../util/resources.robot
Test Setup    Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Login com credencial valida
    Element Should Be Visible    ${botao-login}
    Realizar login    ${USUARIO}    ${SENHA}
    Validar acesso na pagina de produtos

Login com senha incorreta
    Element Should Be Visible    ${botao-login}
    Realizar login    ${USUARIO}    senhaIncorreta
    Wait Until Element Is Visible    ${item-error}
    Element Should Contain    ${mensagem-erro}    Epic sadface: Username and password do not match any user in this service

Login com campo vazio
    Element Should Be Visible    ${botao-login}
    Realizar login    ${EMPTY}    ${SENHA}
    Wait Until Element Is Visible    ${item-error}
    Element Should Contain    ${mensagem-erro}    Epic sadface: Username is required

Login com usuario bloqueado
    Element Should Be Visible    ${botao-login}
    Realizar login    locked_out_user    ${SENHA}
    Wait Until Element Is Visible    ${item-error}
    Element Should Contain    ${mensagem-erro}    Epic sadface: Sorry, this user has been locked out.