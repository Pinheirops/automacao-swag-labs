*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***

Clicar no botao de abrir carrinho
    Wait Until Element Is Visible    ${botao-carrinho}
    Click Element    ${botao-carrinho}

Acessar pagina de checkout
    Clicar no botao de abrir carrinho
    Clicar no botao de checkout

Validar acesso a pagina de checkout
    Location Should Be    https://www.saucedemo.com/checkout-step-one.html

Validar acesso ao carrinho
    Location Should Be     https://www.saucedemo.com/cart.html
  
Validar acesso na pagina de produtos
    Location Should Be    https://www.saucedemo.com/inventory.html