module Pages
    class Authentication < SitePrism::Page
        set_url '/index.php?controller=authentication&back=my-account'

        element :input_create_account_email, '#email_create'
        element :input_login_email, 'div.form-group #email'
        element :input_login_password, 'div.form-group #passwd'
        element :btn_submit_login, '#SubmitLogin'
        element :btn_submit_create_account, '#SubmitCreate'
        element :error_msg, '[class="alert alert-danger"] li'
    end
end