*** Settings ***
Resource    ../util/resources.robot
Library    String

*** Keywords ***
Acessar item
    [Arguments]    ${index}
    ${locator}=    Replace String    ${ID_ITEM}    {index}    ${index}
    Click Element    ${locator}  

Adicionar item
    [Arguments]    ${item}
    ${add-cart}=    Replace String    ${BUTTON_ADICIONAR_ITEM}    {item}    ${item}
    Click Element    ${add-cart}

Confirmar item
    [Arguments]    ${index}    ${name-item}
    ${id-img}=    Replace String    ${IMAGE_ITEM}    {index}    ${index}
    Element Should Be Visible    ${id-img}
    ${id-title}=    Replace String    ${NAME_ITEM}    {id}    ${index}
    Element Text Should Be    ${id-title}    ${name-item}

Abrir lista de itens
    [Arguments]    ${item}
    Click Button    ${MENU_BUTTON}
    Wait Until Element Is Visible    ${item}

Acessar pagina inicial
    Element Text Should Be    ${ITEM_HOME}    All Items
    Sleep    3
    Click Element    ${ITEM_HOME}
    Wait Until Location Contains    https://www.saucedemo.com/inventory.html
    ${url_inicial}=    Get Location
    Should Be Equal    ${url_inicial}    https://www.saucedemo.com/inventory.html
    Element Should Be Visible    ${TITLE}

Acessar sobre
    Element Text Should Be    ${ITEM_ABOUT}    About
    Sleep    3
    Click Element    ${ITEM_ABOUT}
    Wait Until Location Contains    https://saucelabs.com/    timeout=10s
    ${url_atual}=    Get Location
    Log    ${url_atual}
    Should Be Equal    ${url_atual}    https://saucelabs.com/

Desconectar
    Element Text Should Be    ${ITEM_LOGOUT}    Logout
    Sleep    3
    Click Element    ${ITEM_LOGOUT}
    Wait Until Element Is Visible    ${TITLE_LOGIN}
    Element Should Be Visible    ${LOGIN_BUTTON}
    Sleep    2
Reset
    Element Text Should Be    ${ITEM_RESET}    Reset App State
    Click Element    ${ITEM_RESET}

    