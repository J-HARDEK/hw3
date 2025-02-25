class Place < ApplicationRecord
  # talks to the "places" table
  def index
    @places = Place.all
  end
end
