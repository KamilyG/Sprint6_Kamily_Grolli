module Pages
    class CreateAccount < SitePrism::Page
        set_url '/index.php?controller=authentication&back=my-account#account-creation'

        element :confirm_page_msg, '#authentication .page-heading'
    end
end