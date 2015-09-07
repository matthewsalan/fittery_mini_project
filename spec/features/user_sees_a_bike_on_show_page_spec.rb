require 'rails_helper'

feature "User sees bike show page" do 
  scenario "successfully" do 
    Image.create(url: "/image1.jpg", description: "Description for this bike", price: 999)
    
    visit root_path

    click_link "Click To See Images"

    find(:xpath, "//a/img[@alt='Image1']/..").click
   
    expect(page).to have_css 'h1', text: 'Fittery Mini Project'
    expect(page).to have_css("img[alt='Image1']") 
  end
end