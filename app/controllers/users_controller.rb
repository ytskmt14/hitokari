class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.preload(:profile).find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(params[:id]), flash: { info: '更新しました' }
    else
      render action: 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
    @user.build_profile unless @user.profile.present?
  end

  private

  def user_params
    params.require(:user)
          .permit(
            :first_name, :last_name, :email,
            profile_attributes: %i[id nickname comment]
          )
  end
end
