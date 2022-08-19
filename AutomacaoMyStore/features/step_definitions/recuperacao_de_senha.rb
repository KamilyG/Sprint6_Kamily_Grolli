#@validate_retrieve_password
Dado('tenha clicado na opção de recuperação de senha') do
    @authentication_page.btn_retrieve_password.click
    @retrieve_password_page = Pages::RetrievePassword.new
    @retrieve_password_page.load
  end
  
  Quando('colocar o email para recuperação de senha') do
    @retrieve_password_page.input_email_to_retrieve_password.set 'testekg@hotmail.com'
    @retrieve_password_page.btn_submit_to_retrieve.click
  end
  
  Então('é exibida mensagem de validação') do
    expect(@retrieve_password_page).to have_msg_confirmation_email
    end
#@validate_wrong_email_retrieve_password
Quando('realizar a recuperação de senha com email {string}') do |email|
    @retrieve_password_page.input_email_to_retrieve_password.set email
    @retrieve_password_page.btn_submit_to_retrieve.click
end

Então('é exibida mensagem de validação {string}') do |string|
    expect(@retrieve_password_page).to have_error_retrieving_password_msg
end