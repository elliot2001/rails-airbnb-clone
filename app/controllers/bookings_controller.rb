class BookingsController < ApplicationController
  def new
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new
  end

  def create
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new(booking_params)
    @booking.castle = @castle
    @booking.user = current_user
    if @booking.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure, :number_of_people, :status, :user_id, :castle_id)
  end
end
