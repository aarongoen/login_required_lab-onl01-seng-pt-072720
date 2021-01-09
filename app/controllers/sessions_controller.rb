class SessionsController < ApplicationController
  def new

  end

  def create
    if session[:name].present? 
      redirect_to 'sessions#new'
    else 
      redirect_to '/login'
    end
  end

  def show

  end

  def destroy
    session.delete :username
  end
end
 
