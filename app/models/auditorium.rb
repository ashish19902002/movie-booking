class Auditorium < ApplicationRecord
	has_many :screens
	has_many :movies, through: :screens
	belongs_to :theater
end
