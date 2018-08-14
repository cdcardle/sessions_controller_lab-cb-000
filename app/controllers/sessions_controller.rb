class SessionsController < ApplicationController
  def new
  end

  def create
    raise params
  end

  def destroy
    session.delete :name
  end

  def username
    session[:name]
  end

  private
  helper_method :username
end
