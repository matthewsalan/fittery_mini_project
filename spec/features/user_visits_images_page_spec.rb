require "rails_helper"

feature "User visits images page" do 
  scenario "successfully" do 
    Image.create(url: "/image1.jpg", description: "Description for this bike", price: 999)
    
    visit root_path

    click_link "Click To See Images"
    
    expect(page).to have_css 'a', text: 'b i k e r y' 
    expect(page).to have_css("img[alt='Image1']") 
  end
end