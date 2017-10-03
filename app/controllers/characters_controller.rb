class CharactersController < ApplicationController
  before_action :check_login
  before_action :set_character, only: [:show, :edit, :update, :destroy]

@@rolled_dice

  def index
    redirect_to user_path(params[:user_id])
  end

  def new
    if params[:dice_roll]
      roll_dice
      @rolled_dice = @@rolled_dice
    end
    @user = User.find(params[:user_id])
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @user = @character.player = User.find(params[:user_id])
    if okay = @character.stat_values_okay?(@@rolled_dice) && @character.save
      redirect_to user_character_path(@character.player, @character)
    else
      unless okay
        flash[:titties] = "You must use the numbers provided"
      end
      @rolled_dice = @@rolled_dice
      render :new
    end
  end

  def show
    set_recent_character(@character.id)
  end

  def edit
  end

  def update
    @character.update(character_params) ? (redirect_to user_character_path(@character.player, @character)) : (render :edit)
  end

  def destroy
    @character.destroy
    redirect_to user_path(params[:user_id])
  end

  def join_campaign
    character = Character.find(params[:character_id])
    character.update(campaign: Campaign.find(params[:character][:campaign_id]))
    redirect_to user_character_path(character.player, character)
  end

  def remove_campaign
    character = Character.find(params[:character_id])
    character.update(campaign: Campaign.find_by(name:"No Campaign"))
    campaign = Campaign.find(params[:campaign_id])
    redirect_to user_campaign_path(campaign.user, campaign)
  end

  def learn_spell
    new_spell = Spell.find_by(name: params[:spell])
    @character = Character.find(params[:character_id])
    if new_spell && class_okay?(new_spell)
       @character.spells << new_spell
       @character.save
     else
       if new_spell
         flash[:titties] = "#{@character.class_name}s can't learn #{new_spell.name}."
       else
         flash[:titties] = "No Spell by the name #{params[:spell]}"
       end
     end
     redirect_to user_character_path(@character.player, @character)
  end

  def forget_spell
    @character = Character.find(params[:character_id])
    @character.spells.delete(params[:spell_id])
    redirect_to user_character_path(@character.player, @character)
  end


  private


  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:level, :name, :race, :class_name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :player_id, :campaign_id)
  end

  def class_okay?(spell)
    okay_classes = get_spell_classes(spell)
    okay_classes.include?(@character.class_name) ? true : false
  end

  def get_spell_classes(spell)
    json = RestClient.get(spell.api_url)
    collection = JSON.parse(json)
    collection["classes"].map do |class_names|
      class_names["name"]
    end
  end

  def roll_dice
    @@rolled_dice = 6.times.map do
      4.times.map{ rand(1..6) }.sort
    end
  end



end
