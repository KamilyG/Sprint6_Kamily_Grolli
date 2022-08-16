module Pages
    class NewAddress < SitePrism::Page
        set_url '/index.php?controller=address&id_address'

        element :address, '#address1'
        element :city, '#city'
        element :state_options, 'div#uniform-id_state.selector'
        element :postcode, '#postcode'
        element :phone, '#phone_mobile'
        element :address_alias, '#alias'
        element :btn_submit_new_address, '#submitAddress'
    end
end