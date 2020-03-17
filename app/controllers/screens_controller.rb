class ScreensController < ApplicationController
	def index
		@movie = Movie.find_by(id: params[:id])
  	@screens = @movie.get_screens(params)
  end
end
