class Seat < ApplicationRecord
  belongs_to :auditorium
  belongs_to :category
end
