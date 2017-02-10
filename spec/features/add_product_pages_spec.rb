require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Name', :with => 'Not Chocolate'
    fill_in 'Cost', :with => 2
    fill_in 'Country origin', :with => 'USA'
    fill_in 'Ingredients', :with => 'Sugar'
    fill_in 'Image', :with => 'web address'
    click_on 'Create Product'
    expect(page).to have_content 'All Inventory'
  end

  it "gives error when form field is left blank" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
