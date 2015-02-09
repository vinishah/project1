# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Campu.delete_all
Classroom.delete_all
Course.delete_all
User.delete_all
Booking.delete_all

ca1 = Campu.create(name:'second home', country:'london')

cl1 = Classroom.create(name: 'one')

co1 = Course.create(name: 'WDI', price: '£8000', duration: '12 weeks')

u1 = User.create!(name: 'vinisha', email: 'vinishash@gmail.com', password: 'cuddles123', password_confirmation: 'cuddles123')

ca1.classrooms << cl1
cl1.courses << co1
co1.users << u1


