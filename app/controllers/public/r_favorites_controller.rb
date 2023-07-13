class Public::RFavoritesController < ApplicationController
  before_action :authenticate_user!

  # レビューに対するいいねのコントローラー
  # HTMLリクエストではなく、JavaScriptリクエストで送るため｢redirect_to｣は削除している
  # このコントローラーのアクションを実行した後に｢create.js.erb｣と｢destroy.js.erb｣へ飛ぶため、インスタンス変数の｢@｣を付ける必要がある
  def create
    @item = Item.find(params[:item_id])
    @review = @item.reviews.find(params[:review_id])
    favorite = current_user.r_favorites.new(review_id: @review.id)
    favorite.save
  end

  def destroy
    @item = Item.find(params[:item_id])
    @review = @item.reviews.find(params[:review_id])
    favorite = current_user.r_favorites.find_by(review_id: @review.id)
    favorite.destroy
  end
end
