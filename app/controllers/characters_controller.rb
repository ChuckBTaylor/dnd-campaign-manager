class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.save ? (redirect_to character_path(@character)) : (render :new)
  end

  def show
  end

  def edit
  end

  def update
    @character.update(character_params) ? (redirect_to character_path(@character)) : (render :edit)
  end

  def destroy
    @character.destroy
    redirect_to characters_path
  end


  private


  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :race, :class, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :player_id)
  end

end
