class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @pioneertypes = @user.pioneertypes.page(params[:page]).per(8)
  end
end
