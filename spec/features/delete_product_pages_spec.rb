require 'rails_helper'

describe "the delete product process" do
  it "deletes a product" do
    product = Product.create(:name => 'Super Sweets', :cost => 2, :country_origin => "Canada", :ingredients => "so much sugar", :image => "image address")
    visit product_path(product)
    click_on 'Delete Product'
    expect(page).to_not have_content 'Super Sweets'
  end
end
