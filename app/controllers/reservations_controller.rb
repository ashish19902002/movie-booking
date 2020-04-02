class ReservationsController < ApplicationController

	def create
  	error, reservation  = current_user.make_reservation(params)
  	if error.present?
  		@screen = 
      flash[:notice] = error
      redirect_to movies_path
    else
      flash[:notice] = "Ticket Booked Successfully"
      redirect_to reservation_path(reservation)
    end
  end

  def show
  	@reservation = current_user.get_reservations.where(id: params[:id]).first
  end

  def index
  	@reservations = current_user.get_reservations
  end
end
