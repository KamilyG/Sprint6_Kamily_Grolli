module Pages
    class EditAddress < SitePrism::Page
        set_url '/index.php?controller=address&id_address=733017'

        element :input_new_address, 'input#address1.is_required.validate.form-control'
        element :confirm_edited_address, '#submitAddress'
    end
end
