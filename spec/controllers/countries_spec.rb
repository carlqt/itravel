require 'rails_helper'

RSpec.describe CountriesController do

  describe "#index" do
    it "returns http success" do
      get :index
      response.should be_success
      country = Country.create
      expect(assigns(:countries)).to eq([country])
    end
  end

end
