class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def index
    @messages = Campaign.find(params[:campaign_id]).messages
  end

  def create
    @message = Message.new(message_params)
    @message.user = User.find(session[:user_id])
    @message.save
    redirect_to campaign_path(@message.campaign)
  end

  def edit
  end

  def update
    @message.update(message_params) ? (redirect_to message_path(@message)) : (render :edit)
  end

  def destroy
    @message.destroy
    redirect_to messages_path
  end


  private


  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:content, :campaign_id)
  end

end
