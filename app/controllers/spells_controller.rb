class SpellsController < ApplicationController

  def index
    @spells = Spell.all
  end

  def show
    @spell = Spell.find(params[:id])
    json = RestClient.get(@spell.api_url)
    @collection = JSON.parse(json)
  end

end
