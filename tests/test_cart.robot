*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Validar botão de continuar comprando
    Continuar comprando