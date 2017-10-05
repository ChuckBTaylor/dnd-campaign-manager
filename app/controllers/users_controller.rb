class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user.id)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params) ? (redirect_to user_path(@user)) : (render :edit)
  end

  def destroy
    @user.destroy
    logout
    redirect_to login_path
  end


  private


  def set_user
    id = params[:user_id] || params[:id]
    @user = User.find(id)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :username)
  end

end
