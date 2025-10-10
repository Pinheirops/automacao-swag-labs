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
    Adicionar produto    ${ID_PRODUTO_NOME[1]}
    Abrir carrinho
    # Validar se os itens selecionados na home estão no carrinho corretamente

*** Comments ***
    # Adicionar validação por nome do produto também
    # A ideia é que que o contador, conforme for sendo incrementado, vá pegando o nome do item e salvando dentro de uma variavel.
    # Quando pegar o nome do item, deve verificar se o nome que está na variavel, é igual ao texto que está no id do item.
