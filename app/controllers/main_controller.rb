# Essa classe procura a págia dentro da pasta que corresponde ao nome da classe na pasta "view"
class MainController < ApplicationController
    def index
        # flash.now[:notice] = "Logged in successfully"
        # flash.now[:alert] = "Invalid email or password"
        
        if session[:user_id]
            # Se houver algum dado de usuário armazenado nos cookies do navegador, armazena os dados numa variável para o front utilizar.
            @user = User.find_by(id: session[:user_id])
            # Caso não exista um usuário com esse ID que os cookies está buscando, não retorna um erro, a página será carregada em branco.
        end
    end    
end