class TradesController < ApplicationController

    def index
    end

    def create
        @params = params[:trade][:airbille_id]
        @airbille = Airbille.find(@params)
        @airbille.disponibility = false
        @airbille.save
        @trade = Trade.new(trade_params)
        @trade.user = current_user
        @trade.airbille = @airbille
        if @trade.save
            redirect_to player_path, notice: "Une nouvelle Bille voit le jour !"
          else
            redirect_to root_path
        end
    end

    def trade_params
        params.require(:trade).permit(:user_id, :airbille_id, :trade_date, :trade_value)
    end
end
