class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:name])
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
