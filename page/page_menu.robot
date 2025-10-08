*** Settings ***
Resource    ../util/resources.robot
Library    String

*** Keywords ***
Checar visibilidade do produto
    [Arguments]    ${id}
    ${produto}=    Replace String    ${item-id}    {id}    ${id}
    Element Should Be Visible    ${produto}
    
Adicionar produto
    [Arguments]    ${produto}
    ${botao-produto}=    Replace String    ${botao-adicionar-carrinho}    {nome-produto}    ${produto}
    Element Text Should Be    ${botao-produto}    Add to cart
    Click Button    ${botao-produto}
    ${botao-produto}=    Replace String    ${botao-remover-carrinho}    {nome-produto}    ${produto}
    Element Text Should Be    ${botao-produto}    Remove
    
Remover produto
    [Arguments]    ${produto}
    ${botao-produto}=    Replace String    ${botao-adicionar-carrinho}    {nome-produto}    ${produto}
    ${botao-texto}=    Get Text    ${botao-produto}
    Click Button    ${botao-produto}
    ${botao-produto}=    Replace String    ${botao-remover-carrinho}    {nome-produto}    ${produto}
    Click Button    ${botao-produto}
    Should Be Equal    ${botao-texto}    Add to cart