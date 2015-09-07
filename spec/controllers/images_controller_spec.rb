require 'rails_helper'
require 'support/render_views'

RSpec.describe ImagesController, type: :controller do
  describe "GET #index" do
    
    it "returns the index with rendered partial" do
      get :index

      expect(response).to render_template(partial: "_images")
      expect(response).to have_http_status(:success)
    end
  end

end