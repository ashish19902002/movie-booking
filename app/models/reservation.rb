class Reservation < ApplicationRecord
  belongs_to :screen
  belongs_to :user
end
