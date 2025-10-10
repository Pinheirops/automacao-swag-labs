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
    ${botao-produto}=    Replace String    ${botao-remover-carrinho}    {nome-produto}    ${produto}
    Click Button    ${botao-produto}
    ${botao-produto}=    Replace String    ${botao-adicionar-carrinho}    {nome-produto}    ${produto}
    ${botao-texto}=    Get Text    ${botao-produto}
    Should Be Equal    ${botao-texto}    Add to cart

Abrir carrinho
    Click Element    ${botao-carrinho}

Contar produtos no carrinho
    ${contador}=    Set Variable    0
    FOR    ${produto-index}    IN    @{ID_PRODUTO_NOME}
        ${botao-status}=    Replace String    ${botao-remover-carrinho}    {nome-produto}    ${produto-index}
        ${botao}=    Run Keyword And Return Status    Element Should Be Visible    ${botao-status}
        IF    ${botao}
            ${contador}=    Evaluate    ${contador} + 1
        END
    END

    IF    ${contador} >= 1
        ${qntd-carrinho}=    Get Text    ${contador-carrinho}
        Should Be Equal As Numbers    ${contador}    ${qntd-carrinho}
    ELSE
        Element Should Not Be Visible    ${contador-carrinho}
    END
