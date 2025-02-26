class EntriesController < ApplicationController
  def index
    @entry = Entry.all
  end

  def new
      @entry = Entry.new({ "place_id" => params["place_id"] })
  end

  def show
    @entry = Entry.find(params["id"])
    @place = Place.find_by(@entry["place_id"]) # Ensuring we get the correct place
    @entries = Entry.where("place_id" => @place["id"]) # Fetching entries for this place
  end
  

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"] 
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}" 
  end
end
