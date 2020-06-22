class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def edit
    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user.id)
    end
    @user = User.find(params[:id])
  end

  def show
  end

  def update
    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user.id)
    end
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(params[:id]),
        notice: 'You have updated user successfully.'
    else
      p @user.errors
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
