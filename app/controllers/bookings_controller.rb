class BookingsController < ApplicationController
  def new
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.castle = @castle
  end
end
