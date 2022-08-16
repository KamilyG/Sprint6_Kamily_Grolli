#language: pt

@regression
@busca
Funcionalidade: Busca
COMO usuário do e-commerce My Store
QUERO encontrar um produto através da barra de busca
PARA poder adicionar o produto ao carrinho

Contexto: Estar na página home
    Dado que esteja na página home

@search_for_product
Cenário: Buscar por um produto existente
    Quando buscar por um produto existente
    Então será retornado o resultado da busca pelo produto

@search_for_different_products
Esquema do Cenário: Buscar por produtos existentes
    Quando buscar por um produto "<produto>"
    Então será retornado o resultado da busca pelo produto

    Exemplos:
    |  produto  |
    | Dress     |
    | T-shirt   |
    | Blouse    |
