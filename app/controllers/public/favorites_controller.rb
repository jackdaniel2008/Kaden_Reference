class Public::FavoritesController < ApplicationController
  before_action :authenticate_user!

  # 商品に対するいいねのコントローラー
  # HTMLリクエストではなく、JavaScriptリクエストで送るため｢redirect_to｣は削除している
  # このコントローラーのアクションを実行した後に｢create.js.erb｣と｢destroy.js.erb｣へ飛ぶため、インスタンス変数の｢@｣を付ける必要がある
  def create
    @item = Item.find(params[:item_id])
    favorite = current_user.favorites.new(item_id: @item.id)
    favorite.save
  end

  def destroy
    @item = Item.find(params[:item_id])
    favorite = current_user.favorites.find_by(item_id: @item.id)
    favorite.destroy
  end
end
