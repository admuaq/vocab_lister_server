class CardController < ApplicationController
  def index 
    @cards = Card.all
    render json: @cards
  end
end
