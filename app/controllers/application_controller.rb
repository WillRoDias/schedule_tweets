class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            # Se houver algum dado de usuário armazenado nos cookies do navegador, armazena os dados numa variável para o front utilizar.
            Current.user = User.find_by(id: session[:user_id])
            # Caso não exista um usuário com esse ID que os cookies está buscando, não retorna um erro, a página será carregada em branco.
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path, alert: "You must be signed in to recover your password!" if Current.user.nil?
    end
end
