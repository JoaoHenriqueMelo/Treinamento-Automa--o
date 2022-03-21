*** Settings ***
Documentation           Mapeamento dos elementos da tela de busca

*** Variable ***
&{BUSCA}
...                     PRODUTO=//*[@class='price product-price']/ancestor::*[@class='product-image-container']
...                     IMAGEM_PRODUTO=//*[@class="product-name" and @title="Blouse"]

${MENSAGEM}             //*[@class="alert alert-warning"]
${Women}                //a[@title="Women"]
${subcategoria}         //ul/li/a[text()="Summer Dresses"]
${span}                 //h1/span[contains(text(),"Summer Dresses")]
${login}                //a[@class="login"]
${campo_email.login}    id=email_create
${criar_conta}          id=SubmitCreate