class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @user = User.where("lower(username) = ?", params[:username].downcase).first
    if @user && @user.authenticate(params[:password])
      login(@user.id)
      redirect_to user_path(@user)
    else
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to login_path
  end

end
