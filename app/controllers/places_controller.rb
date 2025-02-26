class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
  end

  def new
  end

  def create
    @places = Place.new
    @places["name"] = params["name"]
    @places.save
    redirect_to "/places"
    end

end
