require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page
        set_url '/index.php?controller=search'

        section :header, Sections::Header, 'div.header-container'
        sections :products, Sections::Products, 'div.product-container'
        
        def access_product_page(index)
            products[index].name.click
        end
    end
end