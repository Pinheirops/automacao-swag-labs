*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Validar botão de continuar comprando
    Continuar comprando

Validar remoção de item do carrinho
    Adicionar produto    ${ID_PRODUTO_NOME[0]}
    Remover item do carrinho    0

Validar botão de checkout
    Abrir carrinho
    Fechar pedido