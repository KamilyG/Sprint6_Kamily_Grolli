#@search_for_product
Dado('que esteja na página home') do
  @home_page = Pages::Home.new
  @home_page.load
end

Quando('buscar por um produto existente') do
  product_for_search = Factory::Static.static_data('valid_product')
  @home_page.search_for(product_for_search)
  @search_results_page = Pages::SearchResults.new
end

Então('será retornado o resultado da busca pelo produto') do
  expect(@search_results_page).to have_products
  expect(@search_results_page.products.first.all_there?).to be_truthy
end

#@search_for_different_products 
Quando('buscar por um produto {string}') do |product|
  @home_page.search_for(product)
  @search_results_page = Pages::SearchResults.new
end