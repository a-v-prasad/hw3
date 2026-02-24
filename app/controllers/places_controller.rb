class PlacesController < ApplicationController


  # GET /places
  def index
    @places = Place.all
  end

  # GET /places/:id
  def show
    @place = Place.find_by({ "id" => params["id"] })
  end

  # GET /places/new
  def new
  end

  # POST /places
  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save

    redirect_to "/places"
  end




end
