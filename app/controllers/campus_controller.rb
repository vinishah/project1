class CampusController < ApplicationController
  def index
    @campus = Campu.all
    @bookings = Booking.all
  end

  def show
    @campu = Campu.find(params[:id])
    # @courses = Course.all
  end

end
