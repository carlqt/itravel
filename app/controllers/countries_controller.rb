class CountriesController < ApplicationController
  def index
    @countries = Country.all
    @user = "Hello"
  end

  def new
  end

end
