class EntriesController < ApplicationController
  def index
    @entry = Entry.all
  end

  def show
    @entry = Entry.find(params["id"]) # Find the specific entry by ID
    @place = Place.find(@entry["place_id"]) # Find the related place
  end

  def new
    @entry = Entry.new
    @entry["place_id"] = params["place_id"]
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
