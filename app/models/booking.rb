class Booking < ApplicationRecord
  enum status: {
    pending: 0,
    accepted: 1,
    refused: 2
  }, _prefix: true

  belongs_to :user
  belongs_to :castle
end
