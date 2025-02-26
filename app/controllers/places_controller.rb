class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
  end

  def new
  end

  def create
    #   # start with a new Place
    @places = Place.new
    #   # assign user-entered form data to Post's columns
    @places["name"] = params["name"]
    #   # save Post row
    @places.save
    #   # redirect user
    redirect_to "/places"
    end

end
