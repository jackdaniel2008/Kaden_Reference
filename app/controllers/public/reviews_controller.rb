class Public::ReviewsController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @review = current_user.reviews.new(review_params)
    @review.item_id = @item.id
    @review.save
    redirect_to request.referer
  end

  def show
    @item = Item.find(params[:item_id])
    @review = @item.reviews.find(params[:id])
    @comment = Comment.new
    @comments = Comment.all
  end

  def index
    @reviews = current_user.reviews.all
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to item_review_path(@review.item.id)
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to request.referer
  end

  private

  def review_params
    params.require(:review).permit(:body, :user_id)
  end
end
