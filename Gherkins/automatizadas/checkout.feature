# language: pt

@regression
@checkout
Funcionalidade: Checkout
COMO usuário do e-commerce My Store
QUERO finalizar minha compra
PARA comprar produtos

Contexto: Estar com a página do carrinho aberto e finalizar a compra
    Dado que esteja na página home
    Quando buscar por um produto existente
    E que tenha aberto a página de produto
    E adicionar o produto ao carrinho
    E tenha aberto a página do carrinho

@checkout_from_cart_by_check
Cenário: Finalizar compra por cheque
    Quando finalizar a compra pelo carrinho
    E realizar o login para checkout
    E confirmar o endereço
    E aderir aos termos e serviço
    E seguir para o pagamento
    E pagar com cheque
    Então são exibidas as informações da compra por cheque

@checkout_from_cart_by_bank_wire
Cenário: Finalizar compra por transferencia
    Quando finalizar a compra pelo carrinho
    E realizar o login para checkout
    E confirmar o endereço
    E aderir aos termos e serviço
    E seguir para o pagamento
    E pagar por transferencia
    Então são exibidas as informações da compra por transferencia