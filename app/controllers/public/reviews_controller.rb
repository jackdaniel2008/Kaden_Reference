class Public::ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def create
    @item = Item.find(params[:item_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.item_id = @item.id
    @review.save
    redirect_to request.referer
  end

  def edit
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end
end
