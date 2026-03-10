*** Settings ***
Resource    ../util/resources.robot
Test Setup    Preparar ambiente de teste
Test Teardown   Fechar navegador

*** Test Cases ***
Cancelar checkout
    Validar botão de cancelar

Tentar finalizar o checkout sem preencher campos obrigatórios
    Validar obrigatoriedade

Finalizar checkout
    Abrir carrinho
    Fechar pedido
    Preencher campo first name
    Preencher campo last name
    Preencher campo postal code
    Validar botao de continuar