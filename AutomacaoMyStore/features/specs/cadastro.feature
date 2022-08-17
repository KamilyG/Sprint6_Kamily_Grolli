# language: pt

@regression
@cadastro
Funcionalidade: Cadastro
COMO usuário do e-commerce My Store
QUERO me cadastrar no site
PARA acessar as funcionalidades

Contexto: Estar com a página de cadastro aberta
    Dado que esteja na página home
    E que tenha aberto a página para login e cadastro

@create_account
Cenário: Fazer cadastro
    Quando colocar o email para cadastro
    E confirmar que deseja realizar o cadastro
    Então é exibida aba para criação de conta com mensagem

@validate_create_account
Esquema do Cenário: Validar o cadastro
    Quando realizar o cadastro "<cadastro>"
    Então é exibida mensagem aba para criação de conta com "<msg>"

    Exemplos:
    | cadastro  | msg                                                                   |
    | invalido  | There are 8 errors                                                    |
    | existente | ???                                                                   |
    | válido    | (colocar algo que apareça na página a qual é direcionado, como nome)  |