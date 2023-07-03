class Public::SizesController < ApplicationController
  def index
    @sizes = Size.all
  end

  def show
    @items = Item.page(params[:page]).per(10)
    @size = Size.find(params[:id])
  end
end
