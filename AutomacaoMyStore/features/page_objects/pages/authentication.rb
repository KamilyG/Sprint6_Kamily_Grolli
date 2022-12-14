module Pages
    class Authentication < SitePrism::Page
        set_url '/index.php?controller=authentication&back=my-account'

        element :input_create_account_email, '#email_create'
        element :input_login_email, 'div.form-group #email'
        element :input_login_password, 'div.form-group #passwd'
        element :btn_submit_login, '#SubmitLogin'
        element :btn_submit_create_account, '#SubmitCreate'
        element :error_msg, '[class="alert alert-danger"] li'
        element :error_to_create_account, '#create_account_error'
        element :btn_retrieve_password, '.form-group.lost_password a'
    end
end