class SessionsController < ApplicationController
  before_action :current_user, only: [:welcome]
  def new

  end

  def create
    session[:name] = params[:name]
    if !session[:name].blank?
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def current_user
    @current_user = session[:name]
  end

  def welcome
    
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
