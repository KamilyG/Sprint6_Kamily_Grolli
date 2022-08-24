module Pages
    class CheckoutAddress < SitePrism::Page
        set_url '/index.php?controller=order&step=1&multi-shipping=0'

        element :btn_next_step_from_address, 'button.btn.btn-default.button-medium'
    end
end