class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    redirect_to 'session/new' if !logged_in?
  end

  def logged_in?
    session[:name]
  end

  private
  helper_method :logged_in?
end
