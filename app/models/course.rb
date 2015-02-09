class Course < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :classroom

  accepts_nested_attributes_for :bookings, allow_destroy:true
end
