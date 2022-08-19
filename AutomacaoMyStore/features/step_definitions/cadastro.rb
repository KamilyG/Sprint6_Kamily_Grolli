#@create_account
Quando('colocar o email para cadastro') do
    email_to_create_account = Factory::Dynamic.user_for_registering
    @authentication_page.input_create_account_email.set email_to_create_account[:email]
  end
  
  Quando('confirmar que deseja realizar o cadastro') do
    @authentication_page.btn_submit_create_account.click
  end

  Então('é exibida aba para criação de conta com mensagem') do
    @create_account_page = Pages::CreateAccount.new
    @create_account_page.load
    expect(@create_account_page).to have_confirm_page_msg
  end

#@validate_wrong_create_account
  Quando('colocar o email incorreto para cadastro {string}') do |email|
    @authentication_page.input_create_account_email.set email
    @authentication_page.btn_submit_create_account.click
  end

  Então('é exibida mensagemd e erro {string}') do |msg|
    expect(@authentication_page).to have_error_to_create_account
  end


#@validate_create_account
  Então('é exibida aba para criação de conta com {string}') do |msg|
    @create_account_page = Pages::CreateAccount.new
    @create_account_page.load
    expect(@create_account_page).to have_confirm_page_msg
  end
