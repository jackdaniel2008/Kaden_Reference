class Public::HomesController < ApplicationController

  def top
    if params[:name].present?
      @items = Item.page(params[:page]).per(10).where('name LIKE ?', "%#{params[:name]}%")
    else
      if params[:name].present?
        @items = Item.page(params[:page]).per(10).where(genre_name: "#{params[:name]}")
      else
        flash[:notice] = "検索結果がありません"
        @items = Item.page(params[:page]).per(10)
      end
    end
  end

  def about
  end
end