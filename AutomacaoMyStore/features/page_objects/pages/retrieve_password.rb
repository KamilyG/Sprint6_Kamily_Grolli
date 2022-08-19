module Pages
    class RetrievePassword < SitePrism::Page
        set_url 'index.php?controller=password'

        element :input_email_to_retrieve_password, '#email'
        element :btn_submit_to_retrieve, 'p .button.button-medium'
        element :msg_confirmation_email, 'p.alert.alert-success'
        element :error_retrieving_password_msg, 'div.alert.alert-danger'
    end
end

