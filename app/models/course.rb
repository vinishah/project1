class Course < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :classroom

end
