class Public::GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @items = Item.page(params[:page]).per(10)
    @genre = Genre.find(params[:id])
  end
end
