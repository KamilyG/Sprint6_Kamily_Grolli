module Pages
    class CheckoutAuthentication < SitePrism::Page
        set_url '/index.php?controller=authentication&multi-shipping=0&display_guest_checkout=0&back=http%3A%2F%2Fautomationpractice.com%2Findex.php%3Fcontroller%3Dorder%26step%3D1%26multi-shipping%3D0'

        element :input_login_email, 'div.form-group #email'
        element :input_login_password, 'div.form-group #passwd'
        element :btn_submit_login, '#SubmitLogin'
    end
end