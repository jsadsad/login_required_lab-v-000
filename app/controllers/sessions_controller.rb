class SessionsController < ApplicationController
  def new
  end

  def create
    if invalid_session?
      redirect to '/'
    else
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def destroy
    session.destroy :name
  end

  private
  def invalid_session?
    params[:name].nil? || params[:name].blank?
  end

end
