*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***
Validar botão de cancelar
    Abrir carrinho
    Fechar pedido
    Element Should Be Visible    ${titulo-checkout}
    Element Should Be Visible    ${botao-cancel}
    Click Element    ${botao-cancel}
    ${location}=    Get Location
    ${location}    Should Be Equal    https://www.saucedemo.com/cart.html    https://www.saucedemo.com/cart.html

Validar obrigatoriedade
    Abrir carrinho
    Fechar pedido
    Element Should Be Visible    ${titulo-checkout}
    Validar botao de continuar
    Element Should Be Visible    ${mensagem-info-required}
    Element Text Should Be    ${mensagem-info-required}    Error: First Name is required
    Preencher campo first name
    Validar botao de continuar
    Element Text Should Be    ${mensagem-info-required}    Error: Last Name is required
    Preencher campo last name
    Validar botao de continuar
    Element Text Should Be    ${mensagem-info-required}    Error: Postal Code is required

Preencher campo first name
    Element Should Be Visible    ${input-first-name}
    Input Text    ${input-first-name}    Pedro
Preencher campo last name
    Element Should Be Visible    ${input-last-name}
    Input Text    ${input-last-name}    Testes
Preencher campo postal code
    Element Should Be Visible    ${input-postal-code}
    Input Text    ${input-postal-code}    12345000

Validar botao de continuar
    Element Should Be Visible    ${botao-continue}
    Click Element    ${botao-continue}