class SessionsController < ApplicationController

  def new
  end

  def create
    byebug
  end

  def current_user
    @current_user ||= session[:current_user_id]
  end

end
