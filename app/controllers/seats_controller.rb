class SeatsController < ApplicationController
  def index
  	@screen = Screen.find_by(id: params[:screen_id])
  	@seats = SeatStock.joins(:seat).select("seat_stocks.id,price,filled,seat_id,row,number").where(screen_id: params[:screen_id]).group_by(&:row)
  end
end
