*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Adicionar item no carrinho
    Wait Until Element Is Visible    ${MENU_TITLE}
    Confirmar item    1    Sauce Labs Bolt T-Shirt      
    Adicionar item    sauce-labs-bolt-t-shirt
    Click Element    ${CART_BUTTON}
    Sleep    3
   
Acessar pagina do item
    Wait Until Element Is Visible    ${MENU_TITLE}
    Acessar item    1
    Sleep    3