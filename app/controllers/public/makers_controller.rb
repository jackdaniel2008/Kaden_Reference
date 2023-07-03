class Public::MakersController < ApplicationController
  def index
    @makers = Maker.all
  end

  def show
    @items = Item.page(params[:page]).per(10)
    @maker = Maker.find(params[:id])
  end
end
