*** Settings ***
Resource    ../util/resources.robot
Suite Setup    Preparar ambiente de teste

*** Test Cases ***
Fluxo completo de compra do usuario
    Validar produto visivel    4
    Clicar botao adicionar produto ao carrinho    ${ID_PRODUTO_NOME[0]}
    Clicar no botao de abrir carrinho
    Validar acesso ao carrinho
    Validar os produtos adicionados    4
    Clicar no botao de checkout
    Validar acesso a pagina de checkout:info
    Preencher campo first name
    Preencher campo last name
    Preencher campo postal code
    Clicar no botao finalizar checkout
    Validar acesso ao checkout:overview
    Clicar no botao concluir compra
    Validar conclusao de compra