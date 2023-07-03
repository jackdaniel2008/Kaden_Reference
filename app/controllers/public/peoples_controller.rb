class Public::PeoplesController < ApplicationController
  def index
    @peoples = People.all
  end

  def show
    @items = Item.page(params[:page]).per(10)
    @people = People.find(params[:id])
  end
end
