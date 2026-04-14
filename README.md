# Robot Framework - Automação Swag labs
Este projeto tem como objetivo praticar automação de testes em aplicações web, utilizando o site Swag Labs (SauceDemo) como ambiente de estudo.

A automação cobre cenários como:
- Login válido e inválido;
- Navegação pelos produtos;
- Adição e remoção de itens no carrinho;
- Finalização da compra.

O projeto é voltado para estudos e prática de QA/Automação de Testes, servindo como referência para quem deseja aprender sobre:
- Estruturação de testes automatizados;
- Uso do Robot Framework
- Automação web com SeleniumLibrary
- Boas práticas em organização de testes

## Escopo da Automação
- Funcionalidades testadas: Login, Produtos, Carrinho, Checkout.
- Ferramenta de automação: Robot Framework.
- Biblioteca utilizada: SeleniumLibrary e Collections.
- Navegador utilizado: Chrome.
- Ambiente: https://www.saucedemo.com/
- Ferramenta de relatório: Allure Report.

## Estrutura do Projeto
- DATA - Variáveis utilizadas nos testes
- LOCATORS - Elementos da página (xpaths, ids, etc)
- PAGE - Keywords e regras de interação com as páginas
- TEST - Casos de teste
- UTIL - Arquivos de integração e imports
    
## Configuração do Ambiente
#### Pré Requisitos
Verificar se o Python e o pip estão instalados:
```
Python --version
pip --version
```

#### Clonar o repositório
```
git clone git@github.com:Pinheirops/Swag_Labs_Automation.git
```

#### Instalar dependências
Instalar o Robot framework:
```
pip install robotframework
```
Instalar a biblioteca Selenium:
```
pip install robotframework-seleniumlibrary
```

## Executar os Testes
Para executar os testes, rode o comando abaixo:
```
robot tests/
```
Ou execute um teste específico:
```
robot tests/nome_do_teste.robot
```

## Relatórios de Teste
Este projeto utiliza o **Allure Report** para geração de relatórios detalhados da execução dos testes.

Para executar os testes, rode o comando abaixo:
```
robot -d output --listener allure_robotframework:results tests/
```
Utilize o comando abaixo para gerar o relatório:
```
allure generate results -o allure-report --clean
```
Para abrir o relatório, utilize o comando abaixo:
```
allure open allure-report
```
