class Admin::SizesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @size = Size.new
    @sizes = Size.all
  end

  def create
    @size = Size.new(size_params)
    if @size.save
    # 元の画面に戻るリダイレクト
      redirect_to request.referer
    else
      render :index
    end
  end

  def show
    @sizes = Size.all
    @size = Size.find(params[:id])
  end

  def edit
    @size = Size.find(params[:id])
  end

  def update
    @size = Size.find(params[:id])
    if @size.update(size_params)
      redirect_to admin_sizes_path
    else
      render :edit
    end
  end

  def destroy
    size = Size.find(params[:id])
    size.destroy
    redirect_to admin_sizes_path
  end

  private

  def size_params
    params.require(:size).permit(:name)
  end
end
