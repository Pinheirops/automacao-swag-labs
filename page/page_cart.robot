*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***

# Validar itens adicionados
#     Checar visibilidade do produto    $id

Continuar comprando
    Abrir carrinho
    Click Element    ${botao-continue-comprando}
    ${url}=    Get Location
    ${url}    Should Be Equal   ${url}    https://www.saucedemo.com/inventory.html

Remover item do carrinho
    [Arguments]    ${index}
    Abrir carrinho
    ${remove-button}=    Replace String    ${remove-item-cart-btn}    {index}    ${ID_PRODUTO_NOME[${index}]}
    Click Element    ${remove-button}
    
Fechar pedido
    Element Should Be Visible    ${botao-checkout}
    Click Element    ${botao-checkout}
    ${location}=    Get Location
    ${location}    Should Be Equal    https://www.saucedemo.com/checkout-step-one.html    https://www.saucedemo.com/checkout-step-one.html