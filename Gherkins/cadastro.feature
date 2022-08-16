# language: pt

Funcionalidade: Cadastro
COMO usuário do e-commerce My Store
QUERO me cadastrar no site
PARA acessar as funcionalidades

Contexto: Estar com a página de cadastro aberta
    Dado que esteja na página home
    E tenha aberto a página para cadastro

Cenário: Fazer cadastro
    Quando colocar o email 
    E colocar a senha
    Então é exibida mensagem

Esquema do Cenário: Validar o cadastro
    Quando realizar o cadastro "<cadastro>"
    Então é exibida mensagem "<msg>"

    Exemplos:
    | cadastro  | msg |
    | invalido  | There are 8 errors |
    | existente |    ???      |
    | válido    |   (colocar algo que apareça na página a qual é direcionado, como nome)  |