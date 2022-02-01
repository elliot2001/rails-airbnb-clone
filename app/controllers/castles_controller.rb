class CastlesController < ApplicationController

  def index
    @castles = Castle.all
  end

  def create
    @castle = Castle.new
    @castle.save

    redirect_to castle_path(@castle)
  end

  def new
    @castle = Castle.new
  end

end
