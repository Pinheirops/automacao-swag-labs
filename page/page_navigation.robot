*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***

Clicar no botao de abrir carrinho
    Wait Until Element Is Visible    ${botao-carrinho}
    Click Element    ${botao-carrinho}

Acessar pagina de checkout
    Clicar no botao de abrir carrinho
    Clicar no botao de checkout

Validar acesso a pagina de checkout:info
    Location Should Be    https://www.saucedemo.com/checkout-step-one.html

Validar acesso ao checkout:overview
    Location Should Be    https://www.saucedemo.com/checkout-step-two.html

Validar acesso ao carrinho
    Location Should Be     https://www.saucedemo.com/cart.html
  
Validar acesso na pagina de produtos
    Location Should Be    https://www.saucedemo.com/inventory.html

Validar conclusao de compra
    Location Should Be    https://www.saucedemo.com/checkout-complete.html
    Element Should Be Visible    ${text-confirmacao}
    Element Text Should Be    ${text-confirmacao}    Thank you for your order!