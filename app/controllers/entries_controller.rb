class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entries = Place.find_by({ "name" => params["name"] })
    @places = Entry.where({ "place_id" => @places["id"] })
  end

  def new
  end

  def create
    #   # start with a new Place
    @entries = Entry.new
    #   # assign user-entered form data to Post's columns
    @entries["title"] = params["title"]
    @entries["description"] = params["description"]

    #   # save Post row
    @entries.save
    #   # redirect user
    redirect_to "/entries"
    end
end
