class AuditoriumCategory < ApplicationRecord
  belongs_to :auditorium
  belongs_to :category
end
