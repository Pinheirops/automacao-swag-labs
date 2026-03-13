*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Cancelar checkout
    Acessar pagina de checkout
    Clicar no botao de cancelar checkout
    Validar acesso ao carrinho

Checkout sem preencher first name
    Acessar pagina de checkout
    Validar notificacao de campo obrigatorio first name
Checkout sem preencher last name
    Acessar pagina de checkout
    Preencher campo first name
    Validar notificacao de campo obrigatorio last name
Checkout sem preencher postal code
    Acessar pagina de checkout
    Preencher campo first name
    Preencher campo last name
    Validar notificacao de campo obrigatorio postal code

Concluir checkout
    Acessar pagina de checkout
    Preencher campo first name
    Preencher campo last name
    Preencher campo postal code
    Clicar no botao finalizar checkout
    Validar acesso ao checkout:overview