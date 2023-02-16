class GossipsController < ApplicationController
    def index
      @cities = City.all
        # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
      end
    
      def show
        # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
       @city = City.all
      end
end
     
     