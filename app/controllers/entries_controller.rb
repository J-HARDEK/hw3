class EntriesController < ApplicationController
  def index
    render :inline => "places"
  end

end
