*** Settings ***
Resource    ../util/resources.robot
Library    String
Library    XML

*** Keywords ***
Validar produto visivel
    [Arguments]    ${id}
    ${produto}=    Replace String    ${item-id}    {id}    ${id}
    Element Should Be Visible    ${produto}
    
Clicar botao adicionar produto ao carrinho
    [Arguments]    ${produto}
    ${botao-produto}=    Replace String    ${botao-adicionar-carrinho}    {nome-produto}    ${produto}
    Element Text Should Be    ${botao-produto}    Add to cart
    Click Button    ${botao-produto}
    ${botao-produto}=    Replace String    ${botao-remover-carrinho}    {nome-produto}    ${produto}
    Element Text Should Be    ${botao-produto}    Remove
    
Clicar botao remover produto do carrinho
    [Arguments]    ${produto}
    ${botao-produto}=    Replace String    ${botao-remover-carrinho}    {nome-produto}    ${produto}
    Click Button    ${botao-produto}
    ${botao-produto}=    Replace String    ${botao-adicionar-carrinho}    {nome-produto}    ${produto}
    ${botao-texto}=    Get Text    ${botao-produto}
    Should Be Equal    ${botao-texto}    Add to cart

Validar quantos produtos foram adicionados
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

Validar os produtos adicionados
    [Arguments]    ${id}
    Wait Until Element Is Visible   ${lista-carrinho}
    ${produto}=    Replace String    ${item-id}    {id}    ${id}
    Element Should Be Visible    ${produto}