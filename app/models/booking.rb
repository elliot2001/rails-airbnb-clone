class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :castle

  def booked_dates
    (arrival_date..departure).to_a
  end
end
