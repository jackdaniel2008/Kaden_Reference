class Public::HomesController < ApplicationController

  def top
    if params[:name].present?
      @items = Item.page(params[:page]).per(10).where('name LIKE ?', "%#{params[:name]}%")
    else
      @items = Item.page(params[:page]).per(10)
    end
  end

  def about
  end
end