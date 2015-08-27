require "rails_helper"

feature "User sees images" do 
  scenario "when they visit images url" do 
    visit root_path

    click_link "Click To See Images"

    expect(page).to have_css("img[src*='/image1.jpg']")
  end
end