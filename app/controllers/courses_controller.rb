class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
    @campus = Campu.all
  end

  def edit
  end

  def show
    @course = Course.find(params[:id])
    @campus = Campu.all
  end
end
