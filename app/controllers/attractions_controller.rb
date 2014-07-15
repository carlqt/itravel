class AttractionsController < ApplicationController

  def new
    @countries = Country.all
    # @attraction = @country.attractions.build
  end

  def create
    build_data(params)

    @country.transaction do 
      if @country.save
        @photo = @attraction.photos.create!(params[:photo])
        flash[:success] = "Attraction added"
        redirect_to attractions_new_path 
      else
        flash[:alert] = "Error in adding attraction"
        @countries = Country.all
        render :new
      end  
    end
      
  end

  def show
  end

  private

  def build_data(params)
    @country = Country.find params[:country]
    @attraction = @country.attractions.build(attraction_params)
  end

  def attraction_params
    params.require(:attraction).permit(:name, :description, photos_attribute: [:picture])
  end
end