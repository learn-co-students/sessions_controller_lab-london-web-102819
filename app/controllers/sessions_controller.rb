class SessionsController < ApplicationController
  def new
  
  end
  
  def create
    if params[:name] && !params[:name].empty?
      session[:name]= params[:name]
      redirect_to "/"
    else
      redirect_to log_in_path
    end 
  end 

  def destroy
    session.destroy
    redirect_to "/"
  end
end
