# Automação Swag labs

Este projeto tem como objetivo praticar e demonstrar automação de testes em aplicações web, utilizando o site Swag Labs (SauceDemo) como ambiente de estudo.

A automação cobre cenários como:

- Login válido e inválido
- Navegação pelos produtos
- Adição e remoção de itens no carrinho
- Finalização da compra

O projeto é voltado para estudos e prática de QA/Automação de Testes, servindo como referência para quem deseja aprender sobre:
- Estruturação de testes automatizados
- Uso de ferramentas como Robot Framework, SeleniumLibrary e Playwright
- Boas práticas em automação web

## Escopo da Automação

- Funcionalidades testadas: Login, produtos, carrinho, checkout
- Ferramenta de automação: Robot Framework (com Playwright)
- Navegador utilizado: Chrome
- Ambiente: https://www.saucedemo.com/


## Configurações de Ambiente

Para rodar esse projeto, você vai precisar adicionar as seguintes variáveis de ambiente.

#### Pré Requisitos
```
Python --version
pip --version
```

#### Clonar o repositório
```
git clone git@github.com:Pinheirops/Swag_Labs_Automation.git
```

#### Instalar dependências
```
pip install robotframework-seleniumlibrary
```

#### Instalar Robot Framework
```
pip install robotframework
```
## Como Executar os Testes
```
robot ../{file}.robot
```
