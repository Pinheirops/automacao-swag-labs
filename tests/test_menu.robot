*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Validar exibicao dos produtos
    ${total}=    Get Length    ${PRODUTOS_ESPERADOS}
    FOR    ${i}    IN RANGE    0     ${total}
    ${i}=    Convert To String    ${i}
        Checar visibilidade do produto    ${i}
        # Adicionar validação por nome do produto também
    END

