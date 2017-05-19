class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    city_params = params.require(:city).permit(:name, :health)

    @city = City.new(city_params)

    if @city.save
       redirect_to @city
    else
       render 'new'
    end
  end

  def show
    @city = City.find(params[:id])
  end
end
