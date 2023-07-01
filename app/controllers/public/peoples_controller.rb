class Public::PeoplesController < ApplicationController
  def index
    @peoples = People.all
  end
end
