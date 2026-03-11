*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***
Clicar no botao continuar comprando
    Element Should Be Visible    ${botao-continue-comprando}
    Click Element    ${botao-continue-comprando}

Remover item adicionado no carrinho
    [Arguments]    ${index}
    ${remove-button}=    Replace String    ${remove-item-cart-btn}    {index}    ${ID_PRODUTO_NOME[${index}]}
    Click Element    ${remove-button}
    
Clicar no botao de checkout
    Element Should Be Visible    ${botao-checkout}
    Click Element    ${botao-checkout}