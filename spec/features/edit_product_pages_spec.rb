require 'rails_helper'

describe "the edit product process" do
  it "edits a product" do
    product = Product.create(:name => 'Gummi Yummi', :cost => 2, :country_origin => "Canada")
    visit product_path(product)
    click_on 'Edit Product'
    fill_in 'Name', :with => 'Yummier Gummi'
    click_on 'Update Product'
    expect(page).to have_content 'All Inventory'
  end

  it "gives error when a field is left blank" do
    product = Product.create(:name => 'Sweets', :cost => 2, :country_origin => "Canada")
    visit product_path(product)
    click_on 'Edit Product'
    fill_in 'Name', :with => ''
    click_button 'Update Product'
    expect(page).to have_content 'errors'
  end
end
