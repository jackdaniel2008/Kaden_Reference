class Admin::CategoriesController < ApplicationController
  before_action :authenticate_admin!

  def create
    @category = Category.new(category_params)
    if @category.save
    # 元の画面に戻るリダイレクト
      redirect_to request.referer
    else
      @genre = Genre.new
      @genres = Genre.all
      render template: "admin/genres/index"
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @item.update(category_params)
      redirect_to request.referer
    else
      render :edit
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    # 元の画面に戻るリダイレクト
    redirect_to request.referer
  end

  private

  def category_params
    params.require(:category).permit(:name, :genre_id)
  end
end
