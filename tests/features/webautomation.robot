*** Settings ***
Documentation    Aqui estarão presentes todos os cenários de automação WEB
Resource         ../../src/config/packge.robot

Test Setup       Abrir sessão
Test Teardown    Fechar sessão

*** Test Case ***
Cenario: Pesquisando um produto com sucesso
    Dado que o cliente estaja na tela home do site
    Quando realizar a pesquisa de um produto
    Então o produto deve ser aprensentado com sucesso

Cenario: Pesquisando um produto inexistente
    Dado que o cliente estaja na tela home do site
    Quando Realizar a Pesquisa do produto                produto_inexistente
    Então é apresentado a mensagem                       No results were found for your search "produto_inexistente"

Cenario: Listar produto
    Dado que o cliente estaja na tela home do site
    Quando passar o mouse por cima da categoria women
    E clickar na subcategoria "summer dresses"
    Então a categoria "summer dresses" deverá aparecer

Cenario: Adicionar cliente
    Dado que o cliente estaja na tela home do site
    Quando clickar no "sign in" e adicionar e-mail e preencher os campos
    E clickar em "submter cadastro"
    Então o cadastro será realizado com sucesso
