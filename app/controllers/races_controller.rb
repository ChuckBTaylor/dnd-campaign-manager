class RacesController < ApplicationController

  def index
    @races = Race.all
  end

  def show
    @race = Race.find_by(name: params[:id]) || Race.find(params[:id])
  end
end
