class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  helper :campaigns
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = User.find(session[:user_id])
    @campaign.save ? (redirect_to campaign_path(@campaign)) : (render :new)
  end

  def show
  end

  def edit
  end

  def update
    @campaign.update(campaign_params) ? (redirect_to user_campaign_path(@campaign.user, @campaign)) : (render :edit)
  end

  def destroy
    @campaign.destroy
    redirect_to user_path(session[:user_id])
  end


  private


  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  def campaign_params
    params.require(:campaign).permit(:name, :user_id, :description)
  end

end
