#@login_from_home
Dado('que tenha aberto a página para login') do
    @home_page.btn_login.click
    @log_in_page = Pages::LogIn.new
    @log_in_page.load
  end
  
  Quando('colocar o email') do
    @log_in_page.input_email.set 'testekg@hotmail.com'
  end
  
  Quando('colocar e confirmar a senha') do
    @log_in_page.input_password.set '123456'
    @log_in_page.btn_submit_login.click
    @my_account_page = Pages::MyAccount.new
    @my_account_page.load
  end
  
  Então('é exibida mensagem') do
    expect(@my_account_page).to have_confirmation_msg
  end

  #@validate_wrong_logins
  Quando('realizar o login com {string} e {string}') do |email, senha|
    @log_in_page.input_email.set email
    @log_in_page.input_password.set senha
    @log_in_page.btn_submit_login.click
  end
  
  Então('é exibida mensagem {string}') do |msg|
    expect(@log_in_page.error_msg.text).to eql msg
  end

  #@validate_ok_login
  Então('é exibido o modal de mensagem {string}') do |msg|
    @my_account_page = Pages::MyAccount.new
    @my_account_page.load
    expect(@my_account_page).to have_confirmation_msg
    end