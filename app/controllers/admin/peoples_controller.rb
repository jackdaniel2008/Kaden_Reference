class Admin::PeoplesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @people = People.new
    @peoples = People.all
  end

  def create
    @people = People.new(people_params)
    if @people.save
    # 元の画面に戻るリダイレクト
      redirect_to request.referer
    else
      @peoples = People.all
      render :index
    end
  end

  def show
    @peoples = People.all
    @people = People.find(params[:id])
  end

  def edit
    @people = People.find(params[:id])
  end

  def update
    @people = People.find(params[:id])
    if @people.update(people_params)
      redirect_to admin_peoples_path
    else
      render :edit
    end
  end

  def destroy
    people = People.find(params[:id])
    people.destroy
    redirect_to admin_peoples_path
  end

  private

  def people_params
    params.require(:people).permit(:name)
  end
end
