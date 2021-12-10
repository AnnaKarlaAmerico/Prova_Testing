*** Variables ***
${SITE}                 https://chicorei.com/
${NAVEGADOR}            chrome
${COOKIES}              css=#confirmPolicyButton
${BUSCA}                css=#header-search-input-desktop
${CARAMELO}             Vira lata caramelo
${AMARELO}              Amarelo é desespero
${ERARR}                Erarr               
${NEMTEVI}              Nem Te Vi
${ALCEU}                Alceu Dispor
${CAMISETA1}            css=#header-search-desktop > form > div > div > div > div:nth-child(1) > div > div:nth-child(2) > div.product-list-item-title
${CAMISETA2}            css=#header-search-desktop > form > div > div > div > div:nth-child(1) > div > div:nth-child(2) > div.product-list-item-title
${CAMISETA3}            css=#header-search-desktop > form > div > div > div > div:nth-child(1) > div > div:nth-child(2) > div.product-list-item-title
${CAMISETA4}            css=#header-search-desktop > form > div > div > div > div:nth-child(1) > div > div:nth-child(2) > div.product-list-item-title
${CAMISETA5}            css=#header-search-desktop > form > div > div > div > div:nth-child(1) > div > div:nth-child(2) > div.product-list-item-title
${TAMANHO1}             css=#product-variations > div.text-yanone > div > div:nth-child(4) > nav > div:nth-child(2)
${TAMANHO2}             css=#product-variations > div.text-yanone > div > div:nth-child(3) > nav > div:nth-child(6)
${TAMANHO3}             css=#product-variations > div.text-yanone > div > div:nth-child(4) > nav > div:nth-child(5)
${TAMANHO4}             css=#product-variations > div.text-yanone > div > div:nth-child(4) > nav > div:nth-child(5)
${TAMANHO5}             css=#product-variations > div.text-yanone > div > div:nth-child(4) > nav > div:nth-child(5)
${COR1}                 css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(2) > div
${COR2}                 css=#product-variations > div.text-yanone > div > div:nth-child(5) > nav > div:nth-child(4) > div
${COR3}                 css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(3) > div
${COR4}                 css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(6) > div
${COR5}                 css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(4) > div
${COMPRAR}              css=#product-buy-button-container > button
${SACOLA}               css=#header-cart-popover > div > div.text-center > a.btn.btn-lg.mb
${FECHAR_PEDIDO}        css=#cart-finish > button.btn.btn-xl.btn-wide.mt.hidden-xs-down

*** Keywords ***
Abrir o site da loja Chico Rei
  Open Browser                      ${SITE}             ${NAVEGADOR}
  Maximize Browser Window

Clicar em "Concordar" no aviso sobre Cookies
  Click Element                     ${COOKIES}

Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados        
  Input Text                        ${BUSCA}            ${CARAMELO}
  Sleep                             2
  Click Element                     ${CAMISETA1}

Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
  Input Text                        ${BUSCA}            ${AMARELO}
  Sleep                             2
  Click Element                     ${CAMISETA2}

Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
  Input Text                        ${BUSCA}            ${ERARR}
  Sleep                             2
  Click Element                     ${CAMISETA3}

Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados
  Input Text                        ${BUSCA}            ${NEMTEVI}
  Sleep                             2
  Click Element                     ${CAMISETA4}

Pesquisar por "Alceu Dispor" e selecionar a primeira opção da lista de resultados
  Input Text                        ${BUSCA}            ${ALCEU}
  Sleep                             2
  Click Element                     ${CAMISETA5}

Validar se o valor do produto é "R$ 69,90"
  Page Should Contain               R$ 69,90

Selecionar um tamanho, cor e clicar em comprar 1
  Wait Until Element Is Visible     ${TAMANHO1}
  Click Element                     ${TAMANHO1}
  Click Element                     ${COR1}
  Click Element                     ${COMPRAR}

Selecionar um tamanho, cor e clicar em comprar 2
  Wait Until Element Is Visible     ${TAMANHO2}
  Click Element                     ${TAMANHO2}
  Click Element                     ${COR2}
  Click Element                     ${COMPRAR}

Selecionar um tamanho, cor e clicar em comprar 3
  Wait Until Element Is Visible     ${TAMANHO3}
  Click Element                     ${TAMANHO3}
  Click Element                     ${COR3}
  Click Element                     ${COMPRAR3}

Selecionar um tamanho, cor e clicar em comprar 4
  Wait Until Element Is Visible     ${TAMANHO4}
  Click Element                     ${TAMANHO4}
  Click Element                     ${COR4}
  Click Element                     ${COMPRAR}

Selecionar um tamanho, cor e clicar em comprar 5
  Wait Until Element Is Visible     ${TAMANHO5}
  Click Element                     ${TAMANHO5}
  Click Element                     ${COR5}
  Click Element                     ${COMPRAR}

Clicar em "Ver sacola"
  Click Element                     ${SACOLA}

Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
  Page Should Contain               VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!

Validar se a mensagem "Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo." está sendo exibida
  Page Should Contain               Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo.

Validar se a mensagem "De segunda a sexta, das 8h às 20h." está sendo exibida
  Page Should Contain               De segunda a sexta, das 8h às 20h.

Validar se a mensagem "Compre parcelado com cartão ou a vista com boleto ou depósito" está sendo exibida
  Page Should Contain               Compre parcelado com cartão ou a vista com boleto ou depósito

Validar se a mensagem "Sua primeira troca na Chico Rei é por nossa conta!" está sendo exibida
  Page Should Contain               Sua primeira troca na Chico Rei é por nossa conta!

Clicar em "Fechar pedido"
  Click Element                     ${FECHAR_PEDIDO}

Fechar o navegador
  Close Browser