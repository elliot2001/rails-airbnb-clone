class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
   end

  def new
    @castle = Castle.find(params[:castle_id])
    @bookings = @castle.bookings.map do |booking|
      booking.booked_dates
    end
    @bookings_dates = @bookings.flatten.uniq
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

  def update
    set_booking
    @booking.save!
    redirect_to booking_path(@booking)
  end

#   def update
#   @booking = Booking.find(params[:id])
#   @castle = @booking.castle

#   if @booking.update(booking_params)
#   redirect_to @booking
#   flash[:notice] = 'La mise-à-jour des informations a bien été prise en compte.'
#   else
#   render :index
#   end
#  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to root_path
  end

  def edit
    set_booking
  end

    def set_status_accepted
    @booking.mark('Valider')
    redirect_to @booking
  end

  def set_status_decline
    @booking.mark('Refuser')
    redirect_to @booking
  end

  def set_status_done
    @booking.mark('Terminer')
    redirect_to @booking
  end

  def set_status_canceled
    @booking.mark('Annuler')
    redirect_to @booking
  end

  private

  def parse_date(str_date)

  end

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure, :number_of_people, :status, :user_id, :castle_id)
  end

   def set_booking
    @booking = Booking.find(params[:id])
  end
end
