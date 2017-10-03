class SpellsController < ApplicationController

  def index
    @spells = Spell.all
  end

  def show
    @spell = Spell.find(params[:id])
    json = RestClient.get(@spell.api_url)
    @collection = JSON.parse(json)
  end

  def search
    @spells = Spell.all.select do |spell|
      spell.name.match(/#{params[:search]}/i)
    end
    @spells = @spells.size == 0 ? Spell.all : @spells
    render :index
  end

end
