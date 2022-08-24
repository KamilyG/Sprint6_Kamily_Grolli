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
        element :btn_agree_to_terms, '.checker'
        element :btn_proceed_to_payment, 'button.btn.btn-default.standard-checkout.button-medium'
        element :btn_pay_by_check, 'a.cheque'
        element :btn_pay_by_bankwire, 'a.bankwire'
        element :btn_finish_buy, 'button.btn.btn-default.button-medium'
        element :msg_finish_buy, 'p.alert.alert-success'
        element :info_finish_buy, 'p.cheque-indent'
    end
end