class RegistrationController < ApplicationController

    def home
    end

    def new
    end

    def check
      @current_user = User.where(email: params[:email], password: params[:password]).first
      if @current_user
        session[:user_id] = @current_user.id
        flash[:info] = "Vous êtes maintenant connecté"
        redirect_to root_path
      else
        session[:user_id] = nil
        flash[:info] = "Échec de la connexion"
        redirect_to registration_new_path
      end
    end

    def destroy
      session.delete(:user_id)
      @current_user = nil
      flash[:info] = "Vous êtes bien déconnecté"
      redirect_to root_path
    end
end
