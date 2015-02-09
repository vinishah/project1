class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :default_role
  
  has_many :bookings
  has_many :courses, through: :bookings

  accepts_nested_attributes_for :bookings, allow_destroy:true
  
  # validates :name, presence:true
  
  def admin?
    self.role == 'admin'
  end

  private
  def default_role
    self.role = 'user'
  end
end
