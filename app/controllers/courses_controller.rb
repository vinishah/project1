class CoursesController < ApplicationController

authorize_resource

  def index
    @courses = Course.all
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)
    # @event_strips = Course.event_strips_for_month(@shown_month)
  end

  def new
    @course = Course.new
    @campus = Campu.all
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course
    else
      redirect_to(courses_path)
    end
  end

  def edit
    @course = Course.find(params[:id])
    puts @course
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to @course
    else
      render 'new'
    end
  end

  def show 
    @course = Course.find(params[:id])
    @campus = Campu.all
    @bookings = Booking.all
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  private 
    def course_params
      params.require(:course).permit(:name, :price, :city, :duration, :max_capacity, :start_date)
    end
  end
