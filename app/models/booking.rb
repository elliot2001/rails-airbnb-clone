class Booking < ApplicationRecord
  enum status: {
    pending: 0,
    accepted: 1,
    refused: 2,
    passed: 3
  }, _prefix: true

  belongs_to :user
  belongs_to :castle

  def booked_dates
    (arrival_date..departure).to_a
  end
end
