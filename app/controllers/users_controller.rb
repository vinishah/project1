class UsersController < ApplicationController
  
# authorize_resource
# before_action :authenticate_user!, only: [:new, :create, :edit, :update, :delete]  


  def index
    @users = User.all
  end

  def new
    @user = User.new
    Booking.all.each do |booking|
      @user.bookings.build
    end
  end

  def create
    user = User.create(user_params)
    user = current_user

    if user.save
      redirect_to user_path(user)
    else
      render 'new'
    end
  end
  
  # private 
  # def user_params
  #   params.require(:user).permit(:name, :role, :email, :password, :courses_enrolled_in)
  # end
  
end
