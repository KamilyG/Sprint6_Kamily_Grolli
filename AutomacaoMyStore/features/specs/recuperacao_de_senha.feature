# language: pt

@regression
@retrieve_password
Funcionalidade: Recuperar a senha
COMO usuário do e-commerce My Store
QUERO recuperar a senha da minha conta
PARA ter acesso a minha conta

Contexto: Estar com a página de recuperação de senha aberta
    Dado que esteja na página home
    E que tenha aberto a página para login e cadastro
    E tenha clicado na opção de recuperação de senha

@validate_retrieve_password
Cenário: Validar a recuperação de senha
    Quando colocar o email para recuperação de senha
    Então é exibida mensagem de validação

@validate_wrong_email_retrieve_password
Esquema do Cenário: Validar diferentes recuperações de senha
    Quando realizar a recuperação de senha com email "<email>"
    Então é exibida mensagem de validação "<msg>"
    Exemplos:
    | email                | msg                                                                     |
    | testekg@hotmail      | Invalid email address.                                                  |
    |                      | Invalid email address.                                                  |