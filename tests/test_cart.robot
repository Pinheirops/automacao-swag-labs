*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Validar botão de retornar aos produtos
    Clicar no botao de abrir carrinho
    Clicar no botao continuar comprando
    Validar acesso na pagina de produtos

Validar remoção de item do carrinho
    Clicar no botao de abrir carrinho
    Clicar botao adicionar produto ao carrinho    ${ID_PRODUTO_NOME[0]}
    Clicar botao remover produto do carrinho    0

Validar botão de confirmar carrinho
    Clicar no botao de abrir carrinho
    Clicar no botao de checkout
    Validar acesso a pagina de checkout:info
