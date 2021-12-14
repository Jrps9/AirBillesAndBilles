class AirbillesController < ApplicationController

    def index
        @airbilles = Airbille.all
        @airbille = Airbille.new
    end

    def show
        @airbilles = Airbille.all
        @airbille = Airbille.find(params[:id])
        @trade = Trade.new
    end

    def create
        @airbille = Airbille.new(airbille_params)
        @airbille.user = current_user
        if @airbille.save
            redirect_to atelier_path, notice: "Une nouvelle Bille voit le jour !"
          else
            redirect_to root_path
        end
    end

    def atelier
        @airbilles = Airbille.all
        @airbille = Airbille.new
    end

    def airbille_params
        params.require(:airbille).permit(:name, :user_id, :couleur)
    end

end
