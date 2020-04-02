class Movie < ApplicationRecord
	has_many :screens
	has_many :auditoria, through: :screens
	has_many :theaters, through: :auditoria

	def get_screens(options={})
  	date = options[:movie_date].present? ? Date.parse(options[:movie_date]) : Date.today
  	screens = self.screens.joins(:auditorium => [:theater]).select("screens.start_time, theaters.name as theater_name, theaters.location, screens.id").where("DATE(screens.start_time) = ?", date).order("screens.start_time asc").group_by{|screen|"#{screen.theater_name}-#{screen.location}"}
  end
end
