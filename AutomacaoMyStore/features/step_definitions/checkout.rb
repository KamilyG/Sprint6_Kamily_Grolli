#@checkout_from_cart_by_check
Quando('realizar o login para checkout') do
    @checkout_authentication_page = Pages::CheckoutAuthentication.new
    @checkout_authentication_page.load
    @checkout_authentication_page.input_login_email.set 'testekg@hotmail.com'
    @checkout_authentication_page.input_login_password.set '123456'
    @checkout_authentication_page.btn_submit_login.click
  end

  Quando('confirmar o endereço') do
    @checkout_address_page = Pages::CheckoutAddress.new
    @checkout_address_page.load
    @checkout_address_page.btn_next_step_from_address.click
  end

  Quando('aderir aos termos e serviço') do
    @order_page.btn_agree_to_terms.click
  end
  
  Quando('seguir para o pagamento') do
    @order_page.btn_proceed_to_payment.click
  end

  Quando('pagar com cheque') do
    @order_page.btn_pay_by_check.click
    @order_page.btn_finish_buy.click
  end

  Então('são exibidas as informações da compra por cheque') do
    expect(@order_page).to have_msg_finish_buy
  end

#@checkout_from_cart_by_bank_wire
Quando('pagar por transferencia') do
  @order_page.btn_pay_by_bankwire.click
  @order_page.btn_finish_buy.click
end

Então('são exibidas as informações da compra por transferencia') do
  expect(@order_page).to have_info_finish_buy
end