class Admin::ReviewsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @user = User.find(params[:user_id])
    @reviews = @user.reviews.all
  end

  def show
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to request.referer
  end
end
