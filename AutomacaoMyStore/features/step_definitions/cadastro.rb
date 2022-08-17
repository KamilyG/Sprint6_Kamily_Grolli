#@create_account
Quando('colocar o email para cadastro') do
    @authentication_page.input_create_account_email.set 'testekg2@hotmail.com'
  end
  
  Quando('confirmar que deseja realizar o cadastro') do
    @authentication_page.btn_submit_create_account.click
  end

  Então('é exibida aba para criação de conta com mensagem') do
    @create_account_page = Pages::CreateAccount.new
    @create_account_page.load
    expect(@create_account_page).to have_confirm_page_msg
  end

  Quando('realizar o cadastro {string}') do |email|
    @authentication_page.input_create_account_email.set 'FAKER'
  end
  
  Então('é exibida mensagem aba para criação de conta com {string}') do |msg|
    @create_account_page = Pages::CreateAccount.new
    @create_account_page.load
    expect(@create_account_page).to have_confirm_page_msg
  end