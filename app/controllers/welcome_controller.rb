class WelcomeController < ApplicationController
    before_action :set_auth
  def index
    @user = current_user if current_user
  end

  def enter
  end

  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end
end
