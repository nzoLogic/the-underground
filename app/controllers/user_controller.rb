class UserController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
  end

  def friends
    @user = User.find_by_id(params[:id])
    @friends = User.koala(session[:omniauth]['credentials'])
  end
end
