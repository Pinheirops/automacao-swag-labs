*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***

Open_menu
    Click Element    ${MENU_BUTTON}

Open_cart
    Click Element    ${CART_BUTTON}

Open_sort
    Click Element    ${SORT_BUTTON}
    
Add_item
    [Arguments]    ${item}
    Click Element    ${item}