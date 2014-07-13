class AttractionsController < ApplicationController

  def new
    @countries = Country.all
    @country = Country.new
    @attraction = @country.attractions.build
  end

  def create

  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :description)
  end
end