require 'test_helper'
class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path

        assert_response :success 
        assert_select '.product', 2
    end

    test 'render a detailed product page' do
        get product_path(products(:one).id)
        assert_response :success
        assert_select '.title', 'MyString1'
        assert_select '.description', 'MyText1'
        assert_select '.price', '$9.99'
    end

    test 'render a new product form' do
        get new_product_path

        assert_response :success
        assert_select 'form'
    end

    test 'allow to create a new product' do 
        post products_path, params: {
            product: {
                title: 'Hola',
                description: 'jeje',
                price: 45
            }
        }
        assert_redirected_to products_path
    end
end