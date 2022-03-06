class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
         @user = User.new(user_params)
         if @user.save
            session[:user_id] = @user.id
            # Session informa aos cookies do navegador os dados do usuário que acabou de se cadastrar.
            redirect_to root_path, notice: "Successfullu created account"
         else
            render :new
         end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

end