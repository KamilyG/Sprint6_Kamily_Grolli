#@login_from_home
Dado('que tenha aberto a página para login e cadastro') do
    @home_page.btn_login.click
    @authentication_page = Pages::Authentication.new
    @authentication_page.load
  end
  
  Quando('colocar o email para login') do
    @authentication_page.input_login_email.set 'testekg@hotmail.com'
  end
  
  Quando('colocar e confirmar a senha para login') do
    @authentication_page.input_login_password.set '123456'
    @authentication_page.btn_submit_login.click
    @my_account_page = Pages::MyAccount.new
    @my_account_page.load
  end
  
  Então('é exibida mensagem') do
    expect(@my_account_page).to have_confirmation_msg
  end

  #@validate_wrong_logins
  Quando('realizar o login com {string} e {string}') do |email, senha|
    @authentication_page.input_login_email.set email
    @authentication_page.input_login_password.set senha
    @authentication_page.btn_submit_login.click
  end
  
  Então('é exibida mensagem {string}') do |msg|
    expect(@authentication_page.error_msg.text).to eql msg
  end

  #@validate_ok_login
  Então('é exibido o modal de mensagem {string}') do |msg|
    @my_account_page = Pages::MyAccount.new
    @my_account_page.load
    expect(@my_account_page).to have_confirmation_msg
    end