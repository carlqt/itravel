class AttractionsController < ApplicationController

  def new
    @countries = Country.all
    # @attraction = @country.attractions.build
  end

  def create
    build_data(params)
    if @country.save
      redirect_to attractions_new_path 
    else
      render :new
    end
  end

  private

  def build_data(params)
    @country = Country.find params[:country]
    @country.attractions.build(attraction_params)
  end

  def attraction_params
    params.require(:attractions).permit(:name, :description)
  end
end