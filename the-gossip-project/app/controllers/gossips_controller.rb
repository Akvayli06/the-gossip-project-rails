class GossipsController < ApplicationController
    def index
      @gossip = User.all
        # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
      end
    
      def show
        # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
       @gossips = User.find(params[:id])
      end
    
      def new
        @gossips = User.new
        # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
      end
    
      def create
        @gossips_create = User.create(gossip_params)
        redirect_to salut_path
        # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
        # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
        # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
      end
    
      def edit
        @gossips = User.find(params[:id])

        # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
      end
    
      def update
        @gossips = User.find(params[:id])
        @gossips.update(gossip_params)

        # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
        # pour info, le contenu de ce formulaire sera accessible dans le hash params
        # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
      end
    
      def destroy
        @gossips = User.find(params[:id])
        @gossips.destroy
        # Méthode qui récupère le potin concerné et le détruit en base
        # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
      end
end

private

def gossip_params
  params.require(:users).permit(:first_name, :desciption)
end