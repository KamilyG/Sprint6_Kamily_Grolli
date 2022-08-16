module Sections
    class Products< SitePrism::Section
        element :name, 'a.product-name'
        element :price, '.right-block .content_price .price.product-price'
        element :image, '.product-image-container .product_img_link'
    end
end