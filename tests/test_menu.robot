*** Settings ***
Resource    ../util/resources.robot

*** Test Cases ***
Adicionar item no carrinho
    Open Browsers
    Valid_login
    Confirm
    Wait Until Element Is Visible    ${MENU_TITLE}
    Element Should Be Visible    ${ITEM_BACKPACK_TITLE}
    Element Text Should Be    ${ITEM_BACKPACK_TITLE}    Sauce Labs Backpack
    Add_item    ${ITEM_BACKPACK_BUTTON}
    Open_cart
    Element Should Be Visible    ${ITEM_BACKPACK_TITLE}
    Sleep    5