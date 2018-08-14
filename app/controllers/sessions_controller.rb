class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      render '/'
    end
  end

  def destroy
    session.delete :name
  end
end
