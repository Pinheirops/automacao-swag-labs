*** Settings ***
Resource    ../../util/browser_util.robot
Resource    ../../locators/menu_locators/menu_locators.robot

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