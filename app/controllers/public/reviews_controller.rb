class Public::ReviewsController < ApplicationController


  def create
    @item = Item.find(params[:item_id])
    @review = current_user.reviews.new(review_params)
    @review.item_id = @item.id
    @review.save
    redirect_to request.referer
  end

  def show
    @item = Item.find(params[:id])
    @review = @item.reviews.find(params[:item_id])
    @comment = Comment.new
    @comments = Comment.all
  end

  def index
    @reviews = current_user.reviews.all
  end

  def edit
  end

  def destroy
    item = Item.find(params[:id])
    review = item.reviews.find(params[:item_id])
    review.destroy
    redirect_to item_path(item.id)
  end

  private

  def review_params
    params.require(:review).permit(:body, :user_id)
  end
end
