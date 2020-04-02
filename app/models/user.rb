class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations


  def make_reservation(options={})
  	error = nil
    reservation = nil
  	ActiveRecord::Base.transaction do
  		begin
  			seat_stocks = SeatStock.where(id: options[:seat_ids].split(','))
  			total_price = 0
  			seat_reservations = []
  			seat_stocks.each do |seat_stock|
  				total_price += seat_stock.price
  				seat_reservations << {seat_id: seat_stock.seat_id, price: seat_stock.price}
  			end
  			reservation_data = {
  				total_price: total_price, screen_id: options[:screen_id], user_id: self.id, status: "confirmed", 
  				seat_reservations_attributes: seat_reservations
  			}
  			reservation = Reservation.new(reservation_data)
  			reservation.save
  			seat_stocks.update_all(filled: true)
			rescue Exception => e
        error = e
      end
  	end
  	return error, reservation
  end

  def get_reservations
    reservations = self.reservations.joins(:screen=>[:movie,:auditorium]).select("reservations.id, movies.title as movie_name, screens.start_time, auditoria.name as audi_name, total_price").includes(:seat_reservations => [:seat])
    return reservations
  end
end
