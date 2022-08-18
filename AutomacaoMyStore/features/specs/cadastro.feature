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
Esquema do Cenário: Validar o cadastro correto
    Quando colocar o email para cadastro 
    Então é exibida aba para criação de conta com "<msg>"

    Exemplos:
    | msg       |
    | válido    |

@validate_wrong_create_account
Esquema do Cenário: Validar o cadastro incorreto
    Quando colocar o email incorreto para cadastro '<email>'
    Então é exibida mensagemd e erro "<msg>"

    Exemplos:
    | email               | msg                                                             |
    | teste@.com          | Invalid email address.                                          |
    | testekg@hotmail.com | An account using this email address has already been registered. |