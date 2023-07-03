class Public::ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @review = Review.new
    @reviews = Review.all
  end
end
