*** Settings ***
Resource    ../util/resources.robot
Library    String

*** Keywords ***
Checar visibilidade do produto
    [Arguments]    ${id}
    ${produto}=    Replace String    ${item-id}    {id}    ${id}
    # ${titulo-produto}=    Replace String    ${titulo-item}    {index}    ${id}
    


    