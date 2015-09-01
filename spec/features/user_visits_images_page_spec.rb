require "rails_helper"

feature "User visits images page" do 
  scenario "successfully" do 
    visit root_path

    click_link "Click To See Images"

    expect(page).to have_css 'a', text: 'b i k e r y' 
  end
end