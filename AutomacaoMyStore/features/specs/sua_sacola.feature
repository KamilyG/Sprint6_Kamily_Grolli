# language: pt

@regression
@carrinho
Funcionalidade: Carrinho
COMO usuário do e-commerce My Store
QUERO acessar o meu carrinho
PARA finalizar uma compra

Contexto: Estar com a página do carrinho aberto com um produto adicionado
    Dado que esteja na página home
    Quando buscar por um produto existente
    E que tenha aberto a página de produto
    E adicionar o produto ao carrinho
    E tenha aberto a página do carrinho

@increase_product_quantity_cart
Cenário: Aumentar quantidade de um produto dentro do meu carrinho
    Quando aumentar a quantidade do produto no carrinho 
    Então é exibido o produto com a quantidade aumentada

@erase_product_from_cart
Cenário: Excluir um produto do carrinho
    Quando excluir o produto do carrinho 
    Então o produto não é mais exibido no meu carrinho

@checkout_from_cart
Cenário: Finalizar a compra
    Quando finalizar a compra pelo carrinho
    Então mostra mensagem de validação da finalização de compra
