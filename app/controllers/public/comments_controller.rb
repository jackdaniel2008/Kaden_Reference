class Public::CommentsController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @review = @item.reviews.find(params[:review_id])
    @comment = current_user.comments.new(comment_params)
    @comment.review_id = @review.id
    @comment.save
    redirect_to request.referer
  end

  def index
    @comments = current_user.comments.all
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end
end
