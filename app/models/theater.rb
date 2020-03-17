class Theater < ApplicationRecord
	has_many :auditoria
  has_many :screens, through: :auditoria
	has_many :movies, through: :screens
end
