*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Adicionar item no carrinho
    Wait Until Element Is Visible    ${MENU_TITLE}      
    Adicionar item    sauce-labs-bolt-t-shirt
    Click Element    ${CART_BUTTON}
    Sleep    3
   
Acessar pagina do item
    Wait Until Element Is Visible    ${MENU_TITLE}
    Acessar item    1
    Sleep    3

Validar item visivel
    Confirmar item    1    Sauce Labs Bolt T-Shirt

Acessar pagina inicial
    Acessar item    2
    Abrir lista de itens    ${ITEM_HOME}
    Acessar pagina inicial
Acessar pagina de sobre
    Abrir lista de itens    ${ITEM_ABOUT}
    Acessar sobre
Retornar comportamento inicial
    Adicionar item    sauce-labs-bolt-t-shirt
    Abrir lista de itens    ${ITEM_RESET}
    Reset
Desconectar do sistema
    Abrir lista de itens    ${ITEM_LOGOUT}
    Desconectar