# language: pt

@regression
@address
Funcionalidade: Meus endereços
COMO usuário do e-commerce My Store
QUERO editar meus endereços
PARA personalizar minha conta

Contexto: Estar na página dos meus endereços
    Dado que esteja na página home
    E que tenha aberto a página para login
    E colocar o email 
    E colocar e confirmar a senha
    E tenha aberto a página dos meus endereços

@edit_my_addresses
Cenário: Editar meus endereços
    Quando editar o endereço 
    Então é exibido o endereço com a modificação na página dos meus endereços

@add_new_address
Cenário: Adicionar endereço aos meus endereços
    Quando adicionar um novo endereço 
    Então é exibido o novo endereço na página dos meus endereços