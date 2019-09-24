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
    redirect_to controller: 'application', action: 'hello'
  end

  private
  
  def invalid_session?
    params[:name].nil? || params[:name].empty?
  end

end
