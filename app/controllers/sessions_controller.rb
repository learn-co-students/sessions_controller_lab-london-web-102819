class SessionsController < ApplicationController

    def new 
    end

    def create
        #byebug
        if params[:name] == "" || !params[:name]
            redirect_to controller: "sessions", action: "new"
        else session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
        redirect_to '/login'
    end
end