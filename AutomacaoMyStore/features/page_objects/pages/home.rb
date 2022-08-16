require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page
        set_url '/'

        section :header, Sections::Header, 'div.header-container'
        element :btn_login, '.login'

        def search_for(product)
            header.click_and_input_text_for_search(product)
            header.btn_open_search.click
        end
    end
end