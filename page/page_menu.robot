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
     
    