class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy, :edit]
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to "/", notice: 'User has been updated!'
    else
      render :new
    end
  end

  def update
    if @user.update(users_params)
      redirect_to profile_path, notice: 'User was updated!'
    else
      render :new
    end
  end

  def destroy
  end

private

  def user_params
    params.require(:user).permit(:email)
  end
  def find_user
    @user = User.find(params[:id])
  end
end
