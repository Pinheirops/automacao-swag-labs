*** Settings ***
Resource    ../util/resources.robot
Resource    page_navigation.robot

*** Keywords ***
Clicar no botao de cancelar checkout
    Location Should Be    https://www.saucedemo.com/checkout-step-one.html
    Element Should Be Visible    ${botao-cancel}
    Click Element    ${botao-cancel}
    Location Should Be    https://www.saucedemo.com/cart.html
Validar notificacao de campo obrigatorio first name
    Element Should Be Visible    ${titulo-checkout}
    Clicar no botao continuar checkout
    Element Should Be Visible    ${mensagem-info-required}
    Element Text Should Be    ${mensagem-info-required}    Error: First Name is required
Validar notificacao de campo obrigatorio last name
    Clicar no botao continuar checkout
    Element Should Be Visible    ${mensagem-info-required}
    Element Text Should Be    ${mensagem-info-required}    Error: Last Name is required
Validar notificacao de campo obrigatorio postal code
    Clicar no botao continuar checkout
    Element Should Be Visible    ${mensagem-info-required}
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
Clicar no botao continuar checkout
    Element Should Be Visible    ${botao-continue}
    Click Element    ${botao-continue}

Validar acesso ao checkout:overview
    Clicar no botao de checkout
    Location Should Be    https://www.saucedemo.com/checkout-step-two.html