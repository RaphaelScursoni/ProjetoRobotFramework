*** Settings ***
Resource        ../resource/Resource.robot
Test Setup       Abrir navegador
#Test Teardown    Fechar navegador

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
  Acessar a página home do site
  Digitar o nome do produto "Blouse" no campo de pesquisa
  Clicar no botão pesquisar
  Conferir se o produto "Blouse" foi listado no site
  Clicar no produto "Blouse"
  Clicar na no botão do carrinho
  Continuar no Checkout


