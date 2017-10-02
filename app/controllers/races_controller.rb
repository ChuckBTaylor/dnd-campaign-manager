class RacesController < ApplicationController

  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
    json = RestClient.get(@race.api_url)
    @collection = JSON.parse(json)
  end
end
