*** Settings ***
Documentation    Mapeamento dos elementos da tela home

*** Variables ***
&{home}
...              titulo=//*[@title="My Store"]
...              Menu= id:block_top_menu
...              search=search_query_top
...              BTN_Pesquisar=//*[@name="submit_search"]