class CastlesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  def index
    @castles = Castle.where.not(latitude: nil, longitude: nil)

    @markers = @castles.geocoded.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude
      }
    end

  end

  def show
    @castle = Castle.find(params[:id])
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user = current_user
    if @castle.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
  end

  def castle_params
    params.require(:castle).permit(:address, :title, :price, :description, :max_capacity)
  end

end
