# language: pt

Funcionalidade: Recuperar a senha
COMO usuário do e-commerce My Store
QUERO recuperar a senha da minha conta
PARA ter acesso a minha conta

Contexto: Estar com a página de recuperação de senha
    Dado que esteja na página home
    E tenha aberto a página recuperação de senha

Cenário: Validar a recuperação de senha
    Quando colocar o email 
    Então é exibida mensagem

Esquema do Cenário: Validar a recuperação de senha
    Quando realizar a recuperação de senha com "<email>"
    Então é exibida mensagem "<msg>"
    Exemplos:
    | email                | msg                                                                     |
    | testekg@hotmail      | Invalid email address.                                                  |
    |                      | Invalid email address.                                                  |
    | testekg@hotmail.com  | A confirmation email has been sent to your address: testekg@hotmail.com |