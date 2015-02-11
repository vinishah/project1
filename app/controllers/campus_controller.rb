class CampusController < ApplicationController
  def index
    @campus = Campu.all
    @bookings = Booking.all
  end

  def show
    @campu = Campu.find(params[:id])
    # @courses = Course.all
  end

  def new
    @campu = campu.new
  end

  def create 
    @campu = Campu.create(campu_params)
    if @campu.save
      redirect_to @campu
    else
      redirect_to(campus_path)
    end
  end

  def edit
    @campu = Campu.find(params[:id])
  end

  def update
    @campu = Campu.find(params[:id])
    @campu.update_attributes(campu_params)
    redirect_to campus_path
  end

  private
  def destroy
    @campu = Campu.find(params[:id])
    @campu.destroy
    redirect_to campus_path
  end

end
