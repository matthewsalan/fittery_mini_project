require "rails_helper"

feature "User sees images" do 
  scenario "when they visit index page" do 
    visit root_path

    expect(page).to have_css("img[src*='image1.jpg']")
  end
end