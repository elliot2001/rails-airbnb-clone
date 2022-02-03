class CastlesController < ApplicationController
<<<<<<< HEAD
=======
  def index
    @castles = Castle.all
  end

>>>>>>> master
  def show
    @castle = Castle.find(params[:id])
  end
end
