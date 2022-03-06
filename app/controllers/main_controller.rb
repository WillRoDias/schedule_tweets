# Essa classe procura a págia dentro da pasta que corresponde ao nome da classe na pasta "view"
class MainController < ApplicationController
    def index
        # flash.now[:notice] = "Logged in successfully"
        # flash.now[:alert] = "Invalid email or password"
        
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end    
end