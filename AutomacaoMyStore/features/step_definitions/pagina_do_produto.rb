#change_color_pdp
Dado('que tenha aberto a página de produto') do
  @search_results_page.access_product_page(0)
  @product_page = Pages::ProductPage.new
end
  
Quando('alterar a cor do produto') do
  @image_before = @product_page.main_image['src']
  @product_page.colors[1].click
end
  
Então('deverá alterar a imagem mostrada na PDP') do
  expect(@product_page.main_image['src']).not_to eql @image_before
end

#increase_quantity_validate_cart
Quando('aumentar a quantidade do produto') do
  @product_page.btn_quantity_plus.click
end

E('adicionar o produto ao carrinho') do
  @product_page.btn_add_to_cart.click
end

Então('deverá ser adicionado as determinadas unidades ao carrinho') do
  expect(@product_page).to have_layer_cart_product_quantity
end

#add_product_to_cart
Então('deverá ser adicionado ao carrinho com sucesso') do
  expect(@product_page).to have_confirm_add_to_cart
end