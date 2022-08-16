module Pages
    class MyAddresses < SitePrism::Page
        set_url '/index.php?controller=addresses'

        element :btn_edit_address, '.address li.address_update a i.icon-chevron-right.right'
        element :addresses_confirmation, '.page-subheading'
        element :btn_add_new_address, 'div.clearfix.main-page-indent a.btn.btn-default.button.button-medium'
    end
end