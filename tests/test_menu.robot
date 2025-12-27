*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Validar exibicao dos produtos
    ${total}=    Get Length    ${PRODUTOS}
    FOR    ${i}    IN RANGE    0     ${total}
    ${i}=    Convert To String    ${i}
        Checar visibilidade do produto    ${i}
    END

Adicionar produto ao carrinho
    Adicionar produto    ${ID_PRODUTO_NOME[4]}
    Contar produtos no carrinho

Remover produto do carrinho
    Adicionar produto    ${ID_PRODUTO_NOME[2]}
    Remover produto    ${ID_PRODUTO_NOME[2]}
    Contar produtos no carrinho

Ver produtos no carrinho
    Adicionar produto    ${ID_PRODUTO_NOME[2]}
    Abrir carrinho
    Validar item adicionado    1