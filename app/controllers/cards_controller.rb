class CardsController < ApplicationController
  def new
    @list = List.find_by(id: params[:list_id])
    @card = Card.new
  end
  
  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def edit
    @card = Card.find_by(id: params[:id])
  end

  def update
  end
  
  def show
    @card = Card.find_by(id: params[:id])
  end
  
  private
  def card_params
    params.require(:card).permit(:title, :memo, :list_id)
  end
end
