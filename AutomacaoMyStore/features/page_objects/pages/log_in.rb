module Pages
    class LogIn < SitePrism::Page
        set_url '/index.php?controller=authentication&back=my-account'

        element :input_email, 'div.form-group #email'
        element :input_password, 'div.form-group #passwd'
        element :btn_submit_login, '#SubmitLogin'
        element :error_msg, '[class="alert alert-danger"] li'
    end
end