module Pages
    class MyAccount < SitePrism::Page
        set_url '/index.php?controller=my-account'

        element :confirmation_msg, '[class="info-account"]'
        element :btn_my_addresses, '.icon-building'
    end
end