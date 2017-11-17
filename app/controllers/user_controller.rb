class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.authentiate
      session[:user_id]=@user.id
    else
      render :login
    end
  end

end
