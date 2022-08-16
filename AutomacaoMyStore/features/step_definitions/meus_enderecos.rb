#@edit_my_addresses
Dado('tenha aberto a página dos meus endereços') do
    @my_account_page.btn_my_addresses.click
    @my_addresses_page = Pages::MyAddresses.new
    @my_addresses_page.load
  end
  
  Quando('editar o endereço') do
    binding.pry
    @my_addresses_page.btn_edit_address.click
    @address_edit_page = Pages::EditAddress.new
    @address_edit_page.load
    @address_edit_page.input_new_address.set ''
    @address_edit_page.input_new_address.set 'novo endereço'
    @address_edit_page.confirm_edited_address.click
end
  
  Então('é exibido o endereço com a modificação na página dos meus endereços') do
    expect(@my_addresses_page).to have_addresses_confirmation
  end

#@add_new_address
Quando('adicionar um novo endereço') do
  binding.pry
  @my_addresses_page.btn_add_new_address.click
  @address_new_page = Pages::NewAddress.new
  @address_new_page.load
  @address_new_page.address.set 'endereço2'
  @address_new_page.city.set 'cidade2'
  @address_new_page.state_options.click
  puts 'Faça a escolha de um estado manualmente'
  binding.pry
  @address_new_page.postcode.set '00000'
  @address_new_page.phone.set '9000000000'
  @address_new_page.address_alias.set 'endereço 2'
  @address_new_page.btn_submit_new_address.click
end

Então('é exibido o novo endereço na página dos meus endereços') do
  expect(@my_addresses_page).to have_addresses_confirmation
end