class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:username] = params[:username]
    redirect_to '/'
    else  
      redirect_to new_session_path
    end 

    return redirect_to(controller: 'sessions',
    action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'

  end

  def destroy
    session.destroy
    redirect_to new_session_path
  end
end
