class UsersController < ApplicationController
  before_action :authenticate_user! , only:[:index]


	  def index
		  @user = User.all
	  end

private


def user_params
    params.require(:user).permit(:name, :email,:password, :password_confirmation, :image, :remember_digest, :profile)
  end
end
