class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
    # 元の画面に戻るリダイレクト
      redirect_to request.referer
    else
      render :index
    end
  end

  def show
    @genre = Genre.find(params[:id])
    @category = Category.new
    @categories = Category.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @item.update(genre_params)
      redirect_to admin_genres_path
    else
      render :edit
    end
  end

  def destroy
    genre = Genre.find(params[:id])
    genre.destroy
    redirect_to admin_genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
  def category_params
    params.require(:category).permit(:name, :genre_id)
  end
end
