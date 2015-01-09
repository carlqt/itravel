require 'rails_helper'

RSpec.describe AttractionsController do

  describe "#create" do
    it "redirects to attractions new path if successful" do
      post :create, attraction: { name: "Mt. Pinatubo", description: "mountain"}
      expect(response).to have_http_status(:found)
      expect(response).to redirect_to(attractions_new_path)
    end

    it "renders new template if create is failed" do
      post :create, attraction: {name: nil}
      expect(response).to render_template(:new)
    end

  end

end
