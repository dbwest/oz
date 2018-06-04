

class DressesPage < ExampleStorefrontBasePage

  add_id_element(:h1, /DRESSES \nThere are 5 products./, class: ['page-heading', 'product-listing'])
  add_route(:CasualDressesPage, :casual_dresses_button)

  def create_elements

    add_button(:casual_dresses, element_type: :link, xpath: "//div[@id='categories_block_left']/div/ul/li[1]/a")

    add_static_text(:title, element_type: :h1, class: ['page-heading', 'product-listing'])

    add_select_list(:product_sort, options: ['--', 'Price: Lowest first', 'Price: Highest first',
                                          'Product Name: A to Z', 'Product Name: Z to A', 'In stock',
                                          'Reference: Lowest first', 'Reference: Highest first'],
                    id: 'selectProductSort')

  end

end
