class UsersController < ApplicationController
  before_action :authenticate_user! , only:[:index]


	  def index
		  @user = User.all
	  end


end
