class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_pioneertypes = @user.pioneertypes.page(params[:page]).per(8)
  end
end
