# Essa classe procura a págia dentro da pasta que corresponde ao nome da classe na pasta "view"
class MainController < ApplicationController
    def index
        # flash.now[:notice] = "Logged in successfully"
        # flash.now[:alert] = "Invalid email or password"
        
        if session[:user_id]
            # Se houver algum dado de usuário armazenado nos cookies do navegador, armazena os dados numa variável para o front utilizar.
            @user = User.find(session[:user_id])
        end
    end    
end