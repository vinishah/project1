class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @users = User.all
    @courses = Course.all
  end

  def new
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
    redirect_to @booking
    else
      redirect_to(bookings_path)
    end
  end
  
  def edit
    @booking = Booking.find(params[:id])
    puts @booking
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to @booking
    else
      render 'new'
    end
  end

  def show
    @bookings = Booking.all
    @courses = Course.all
    @users = User.all
  end

  private 
  def booking_params
    params.require(:booking).permit(:user_id, :course_id)
  end
end
