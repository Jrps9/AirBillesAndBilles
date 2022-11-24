class TradesController < ApplicationController

    def index
        console
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

    def edit
    end

    def update
        @params = params[:trade][:airbille_id]
        @airbille = Airbille.find(@params)
        @airbille.update({:user_id => current_user.id, :disponibility => true})
        @trade = Trade.find(params[:id])
        @trade.user = current_user
        @trade.status = "cloturé"
        @trade.update(trade_params)
        redirect_to trades_path(@trades), notice: "Trés belle achat !"
    end

    def trade_params
        params.require(:trade).permit(:user_id, :airbille_id, :trade_date, :trade_value, :status)
    end

end
