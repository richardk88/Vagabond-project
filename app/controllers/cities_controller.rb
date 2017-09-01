class CitiesController < ApplicationController
  #index page shows all cities
  def index
    @cities = City.all
  end

#show a specific city
  def show
    @city = City.find(params[:id])
  end


end
