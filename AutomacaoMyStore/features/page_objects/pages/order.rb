module Pages
    class Order < SitePrism::Page
        set_url '/index.php?controller=order'

        element :cart_text, '#cart_title.page-heading'
        element :cart_btn_quantity_plus, '.table tbody > tr > td.cart_quantity .cart_quantity_button a + a'
        element :quantity_text, '#summary_products_quantity'
        element :btn_delete_from_cart, 'i.icon-trash'
        element :confirm_deleting_products, '[class="alert alert-warning"]'
        element :btn_checkout_from_cart, '[class = "cart_navigation clearfix"] a.btn.btn-default.button.button-medium'
        element :sign_in_step_checkout, 'li.step_current.second'
    end
end