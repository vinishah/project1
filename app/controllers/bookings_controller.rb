class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @users = User.all
    @course = Course.all
  end

  def new
  end

  def show
  end
end
