class CardsController < ApplicationController
  def new
    @list = List.find(params[:id])
    @card = Card.new
  end

  def create
  end
end
