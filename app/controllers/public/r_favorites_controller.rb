class Public::RFavoritesController < ApplicationController
  # レビューに対するいいねのコントローラー

  def create
    review = Review.find(params[:review_id])
    favorite = current_user.r_favorites.new(review_id: review.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    review = Review.find(params[:review_id])
    favorite = current_user.r_favorites.find_by(review_id: review.id)
    favorite.destroy
    redirect_to request.referer
  end
end
