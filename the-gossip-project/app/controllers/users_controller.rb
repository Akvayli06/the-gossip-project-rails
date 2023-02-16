class UsersController < ApplicationController

    def index
    @users = User.all
      # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    end
    
    def new
      @user = User.new
      # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    end
  
    def create
      user = User.create(user_params).save(validate: false)

      
      redirect_to welcome_path
    end
end

private

def user_params
  params.require(:user).permit(:email, :first_name, :last_name, :password)
end