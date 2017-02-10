require 'rails_helper'

describe "the view Products page path" do
  it "directs user from homepage to Products page" do
    visit root_path
    click_link 'View Products'
    expect(page).to have_content 'All Inventory'
  end
end
