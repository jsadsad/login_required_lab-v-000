class SessionsController < ApplicationController
  def new
  end

  def create
    if invalid_session?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def destroy
    session.delete :name
  end

  private
  def invalid_session?
    params[:name].nil? || params[:name].empty?
  end

end
