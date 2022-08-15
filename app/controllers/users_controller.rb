class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.preload(:profile).find(params[:id])
  end

  def update
  end

  def edit
    @user = User.find(params[:id])
  end
end
