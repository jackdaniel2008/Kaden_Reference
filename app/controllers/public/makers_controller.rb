class Public::MakersController < ApplicationController
  def index
    @makers = Maker.all
  end
end
