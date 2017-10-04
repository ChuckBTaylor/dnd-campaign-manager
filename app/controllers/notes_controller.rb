class NotesController < ApplicationController
  before_action :user_is_in_campaign?

  def index
    @campaign = Campaign.find(params[:campaign_id])
    @notes = @campaign.notes
  end

  def create
    note = Note.new(note_params)
    note.save ? (redirect_to campaign_notes_path(note.campaign)) : (render :index)
  end

  def edit

  end

  def update

  end


  private


  def note_params
    params.require(:note).permit(:content, :title, :campaign_id)
  end

  def user_is_in_campaign?
    @campaign = Campaign.find(params[:campaign_id])
    unless (user_has_character_in_campaign? || user_is_dm?)
      flash[:titties] = "You can't view the notes of a campaign you're not in!"
      return redirect_to campaign_path(@campaign)
    end
  end

  def user_has_character_in_campaign?
    @campaign.characters.any? do |character|
      current_user.characters.include?(character)
    end
  end

  def user_is_dm?
    @campaign.user == User.find(session[:user_id])
  end


end
