*** Settings ***
Documentation    Keywords refente aos testes da home

*** Keywords ***

Dado que o cliente estaja na tela home do site
    Wait Until Element Is Visible    ${home.titulo}
    Wait Until Element is Visible    ${home.Menu}

Quando realizar a pesquisa de um produto
    Input Text                       ${home.search}                                                                               ${busca_blouse}
    Click Element                    ${home.BTN_Pesquisar}

Então o produto deve ser aprensentado com sucesso
    Wait Until Element is Visible    ${BUSCA.PRODUTO}
    Element Should Be Visible        ${BUSCA.IMAGEM_PRODUTO}

Quando Realizar a Pesquisa do produto
    [Arguments]                      ${produto}
    Input Text                       ${home.search}                                                                               ${produto}
    Click Element                    ${home.BTN_Pesquisar}

Então é apresentado a mensagem
    [Arguments]                      ${mensagem_erro}
    Wait Until Element is Visible    ${MENSAGEM}
    ${text}                          Get text                                                                                     ${MENSAGEM}
    Should Be Equal As Strings       ${text}                                                                                      ${mensagem_erro}

Quando passar o mouse por cima da categoria women
    Mouse over                       ${Women}


E clickar na subcategoria "summer dresses"
    Wait Until Element is Visible    ${subcategoria}
    Click Element                    ${subcategoria}


Então a categoria "summer dresses" deverá aparecer
    Page Should Contain Element      ${span}

Quando clickar no "sign in" e adicionar e-mail e preencher os campos
    ${mail}                          FakerLibrary.Email
    ${senha}                         FakerLibrary.Password

    Click Element                    ${login}
    Wait Until Element is Visible    ${campo_email.login}
    Input Text                       ${campo_email.login}                                                                         ${mail}
    Click Element                    ${criar_conta}
    Wait Until Element is Visible    ${title}
    Click Element                    ${title}
    Input Text                       ${first_name}                                                                                ${CADASTRO.NOME}
    Input Text                       ${last_name}                                                                                 ${CADASTRO.SOBRENOME}
    Input Text                       ${email}                                                                                     ${mail}
    Input Text                       ${password}                                                                                  ${senha}
    Select From List By Value        id:days                                                                                      ${CADASTRO.DIA}
    Select From List By Value        id:months                                                                                    ${CADASTRO.MES}
    Select From List By Value        id:years                                                                                     ${CADASTRO.ANO}
    Input Text                       ${first_name}                                                                                ${CADASTRO.NOME}
    Input Text                       ${last_name}                                                                                 ${CADASTRO.SOBRENOME}
    Input Text                       ${address}                                                                                   ${CADASTRO.ENDEREÇO}
    Input Text                       ${city}                                                                                      ${CADASTRO.CIDADE}
    Select From List By Value        id:id_state                                                                                  ${CADASTRO.ESTADO}
    Input Text                       ${postcode}                                                                                  ${CADASTRO.CEP}
    Input Text                       ${phone}                                                                                     ${CADASTRO.TELEFONE}
    Input Text                       ${2_address}                                                                                 ${CADASTRO.ENDEREÇO2}

E clickar em "submter cadastro"
    Click Element                    ${botao_register}


Então o cadastro será realizado com sucesso
    Page Should Contain              Welcome to your account. Here you can manage all of your personal information and orders.
