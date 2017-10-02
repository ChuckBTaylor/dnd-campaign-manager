class SpellsController < ApplicationController
  before_action :set_spell, only: :show

  def index
    @spells = Spell.all
  end

  def show
  end


  private


  def set_spell
    @spell = Spell.find(params[:id])
  end

end
