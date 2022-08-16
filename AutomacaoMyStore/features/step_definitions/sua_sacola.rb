Quando('tenha aberto a página do carrinho') do
    @product_page.close_added_to_cart_window.click
    @product_page.go_to_cart.click
    @order_page = Pages::Order.new
    @order_page.load
  end
  
  Quando('aumentar a quantidade do produto no carrinho') do
    @order_page.cart_btn_quantity_plus.click
  end
  
  Então('é exibido o produto com a quantidade aumentada') do
    expect(@order_page).to have_quantity_text
  end
  
#@erase_product_from_cart
Quando('excluir o produto do carrinho') do
    @order_page.btn_delete_from_cart.click
  end
  
  Então('o produto não é mais exibido no meu carrinho') do
    expect(@order_page).to have_confirm_deleting_products
  end

#@checkout_from_cart
Quando('finalizar a compra pelo carrinho') do
    @order_page.btn_checkout_from_cart.click
  end
  
  Então('mostra msg') do
    expect(@order_page).to have_sign_in_step_checkout
  end