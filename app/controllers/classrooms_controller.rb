class ClassroomsController < ApplicationController

  authorize_resource 
  
  def index
    @classrooms = Classroom.all.order(:name)
  end

  def show
    @classroom = Classroom.find(params[:id])
    @bookings = Booking.all
    @courses = Course.all
    @campus = Campu.all 
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.create(classroom_params)
    if @classroom.save
    redirect_to @classroom
    else
      redirect_to(classrooms_path)
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def update
    @classroom = Classroom.find(params[:id])
    @classroom.update_attributes(classroom_params)
    redirect_to classrooms_path
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy
    redirect_to classrooms_path
  end

  private
    def classroom_params
      params.require(:classroom).permit(:name, :campu_id, {bookings_attributes: [:course_id, :user_id]})
    end

end
