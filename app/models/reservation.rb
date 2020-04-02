class Reservation < ApplicationRecord
  belongs_to :screen
  belongs_to :user
  has_many :seat_reservations
  accepts_nested_attributes_for :seat_reservations

  enum status: {confirmed: 1, cancelled: 2}

end
