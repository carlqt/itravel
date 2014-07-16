class AttractionsController < ApplicationController

  def new
    @countries = Country.all
    @attraction = Attraction.new
    @photos = @attraction.photos.build
  end

  def create
    # build_data(params)

    if Attraction.create(attraction_params)
      flash[:success] = "Attraction added"
      redirect_to attractions_new_path 
    else
      flash[:alert] = "Error in adding attraction"
      @countries = Country.all
      render :new
    end  
      
  end

  def show
    @attn = Attraction.find params[:id]
  end

  private

  def build_data(params)
    # @attraction = @attractions.build(attraction_params)
  end

  def attraction_params
    params.require(:attraction).permit(:name, :country_id, :description, photos_attributes: [:picture])
  end
end