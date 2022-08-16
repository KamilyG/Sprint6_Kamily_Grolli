module Sections
    class Header < SitePrism::Section
        element :btn_open_search, '#search_block_top .btn.button-search'
        element :input_search, '#search_block_top #search_query_top'

        def click_and_input_text_for_search(text)
            btn_open_search.click
            input_search.set text
        end
    end
end