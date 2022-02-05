class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
   end

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
      redirect_to bookings_path()
    else
      render :new
    end
  end

  private

  def parse_date(str_date)

  end

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure, :number_of_people, :status, :user_id, :castle_id)
  end
end
