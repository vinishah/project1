class Classroom < ActiveRecord::Base
  belongs_to :campu
  has_many :courses
end

# if classroom.empty?
#   collection.delete(@classroom.users.where(student))
# end

# if @classroom.user.nil?
#   @msg = "no users found in this classroom"
# end