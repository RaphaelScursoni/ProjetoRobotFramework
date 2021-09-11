*** Settings ***
Test Setup  Abrir navegador
Test Teardown  Fechar navegador
Library  SeleniumLibrary

*** Variables ***
${URL}  http://automationpractice.com
${BROWSER}  chrome
  # Teste Setup    Fechar navegador

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
  Acessar a página home do site
  Abrir navegador
  #   Digitar o nome do produto "Blouse" no campo de pesquisa
  #   Clicar no botão pesquisar
  #   Conferir se o produto "Blouse" foi listado no site
#Caso de Teste 02: Pesquisar produto não existente
#      Acessar a página home do site
#      Abrir navegador
  #   Digitar o nome do produto "Blouse" no campo de pesquisa
  #   Clicar no botão pesquisar
  #   Conferir se o produto "Blouse" foi listado no site

*** Keywords ***
Abrir navegador
  OpenBrowser  about:blank  ${BROWSER}
Fechar navegador
  CloseBrowser
Acessar a página home do site
  Go To  http://automationpractice.com
  Title Should Be  My Store
#Digitar o nome do produto "$(PRODUTO)" no campo de pesquisa
#  Input Text     name=search_query    $(PRODUTO)
#Clicar no botão pesquisar
#  Click Element    name=submit_search
#Conferir se o produto "$(PRODUTO)" foi listado no site
#  Wait Until Element Is Visible    css=#center_column > h1
#  Title Should Be   Search - My Store
#  Clicar no produto "Blouse"
#  Clicar na no botão do carrinho class="exclusive"
#  Continuar no Checkout


