class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    redirect to '/'
  end

  def destroy
    session.destroy :name
  end
end
