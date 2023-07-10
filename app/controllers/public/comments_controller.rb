class Public::CommentsController < ApplicationController

  def create
    @review = Review.find(params[:review_id])
    @comment = current_user.comments.new(comment_params)
    @comment.review_id = @review.id
    @comment.save
    redirect_to request.referer
  end

  def index
    @comments = current_user.comments.all
  end

  def edit
    @review = Review.find(params[:item_id])
    @comment = @review.comments.find(params[:review_id])
  end

  def update
    @review = Review.find(params[:item_id])
    @comment = @review.comments.find(params[:review_id])
    if @comment.update(comment_params)
      redirect_to item_review_path(@review.id)
    else
      render :edit
    end
  end

  def destroy
    review = Review.find(params[:item_id])
    comment = review.comments.find(params[:review_id])
    comment.destroy
    redirect_to item_review_path(review.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end
end
