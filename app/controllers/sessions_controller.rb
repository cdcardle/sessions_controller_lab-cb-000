class SessionsController < ApplicationController
  def new
  end

  def create
    raise params
  end

  def destroy
    session.delete :name
  end
end
