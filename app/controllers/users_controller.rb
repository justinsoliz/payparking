class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    redirect_to new_user_path
  end

end
