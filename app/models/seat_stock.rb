class SeatStock < ApplicationRecord
  belongs_to :seat
  belongs_to :screen
end
