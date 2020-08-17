class SavedCardsController < ApplicationController

    def index
        saved_cards = SavedCard.all 
        render :json => saved_cards.to_json(:include => {:card => {:except=> :created_at}})
    end

    def create
        saved_card = SavedCard.create(saved_card_params)
        render :json => saved_card.to_json(:include => {:card => {:except=> :created_at}})
    end

    def destroy
        saved_card = SavedCard.find(params[:id])
        saved_card.destroy
        render json: saved_card
    end

    private

    def saved_card_params
        params.require(:saved_card).permit(:user_id, :card_id)
    end

end
