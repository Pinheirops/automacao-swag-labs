*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***
Continuar comprando
    Wait Until Element Is Visible    ${botao-carrinho}
    Click Element    ${botao-carrinho}
    ${url}=    Get Location
    ${url}    Should Be Equal   ${url}    https://www.saucedemo.com/cart.html
    Click Element    ${botao-continue-comprando}
    ${url}=    Get Location
    ${url}    Should Be Equal   ${url}    https://www.saucedemo.com/inventory.html

#Remover item do carrinho
    