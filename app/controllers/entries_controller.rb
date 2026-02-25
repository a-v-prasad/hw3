class EntriesController < ApplicationController

  # GET /entries/new
  def new
    @place_id = params["place_id"]
  end

  # POST /entries
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