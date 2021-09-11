*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}           http://automationpractice.com
${BROWSER}       chrome

*** Keywords ***
Abrir navegador
  Open Browser  about:blank  ${BROWSER}

Fechar navegador
  Close Browser

Acessar a página home do site
  Go To  http://automationpractice.com
  Title Should Be  My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
  Input Text     name=search_query    ${PRODUTO}

Clicar no botão pesquisar
  Click Element    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
  Wait Until Element Is Visible    css=#center_column > h1
  Title Should Be   Search - My Store

Clicar no produto "Blouse"
  Click Element     xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Clicar na no botão do carrinho
  Wait Until Element Is Visible    id=bigpic
  Click Element     xpath=//*[@id="add_to_cart"]/button/span

Continuar no Checkout
  Wait Until Element Is Visible    class=icon-ok
  Click Element     xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span

Continuar para o pagamento
  Wait Until Element Is Visible    xpath=//*[@id="product_2_7_0_0"]/td[1]/a
  Click Element     xpath=//*[@id="center_column"]/p[2]/a[1]/span
