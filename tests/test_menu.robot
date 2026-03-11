*** Settings ***
Resource    ../util/resources.robot
Resource    ../page/page_menu.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Validar visibilidade dos produtos na interface
    ${total}=    Get Length    ${PRODUTOS}
    FOR    ${i}    IN RANGE    0     ${total}
    ${i}=    Convert To String    ${i}
        Validar produto visivel     ${i}
    END

Adicionar produto ao carrinho
    Clicar botao adicionar produto ao carrinho    ${ID_PRODUTO_NOME[4]}
    Validar quantos produtos foram adicionados

Remover produto do carrinho
    Clicar botao adicionar produto ao carrinho    ${ID_PRODUTO_NOME[2]}
    Validar quantos produtos foram adicionados
    Clicar botao remover produto do carrinho    ${ID_PRODUTO_NOME[2]}
    Validar quantos produtos foram adicionados

Validar quantidade de produtos no carrinho
    Clicar botao adicionar produto ao carrinho    ${ID_PRODUTO_NOME[2]}
    Clicar no botao de abrir carrinho
    Validar os produtos adicionados    1