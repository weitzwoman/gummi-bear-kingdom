require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_link 'Add New Blog Post'
    fill_in 'Post Title', :with => 'Recall'
    fill_in 'Author Name', :with => 'Candy Czar'
    fill_in 'Enter Content', :with => 'Recall Alert on Gummi Yummi batch 10892'
    click_on 'Create Post'
    expect(page).to have_content 'All Blog Posts'
  end

  it "gives error when form field is left blank" do
    visit new_post_path
    click_on 'Create Post'
    expect(page).to have_content 'errors'
  end
end
