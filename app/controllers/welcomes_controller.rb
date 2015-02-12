class WelcomesController < ApplicationController


  def index
    @campus = Campu.all
    @users = User.all
    @courses = Course.all
    @bookings = Booking.all
  end
end
