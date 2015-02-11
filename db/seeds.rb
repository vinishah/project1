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

ca1 = Campu.create(name:'Second Home', country:'England')
ca2 = Campu.create(name:'902 Broadway', country:'USA')
ca3 = Campu.create(name:'Yale Avenue North', country:'USA')
ca4 = Campu.create(name:'Central', country:'China')
ca5 = Campu.create(name:'Queen Street', country:'Australia')


cl1 = Classroom.create(name: 'one')
cl2 = Classroom.create(name: 'two')
cl3 = Classroom.create(name: 'three')
cl4 = Classroom.create(name: 'four')
cl5 = Classroom.create(name: 'five')
cl6 = Classroom.create(name: 'six')

co1 = Course.create(name: 'Web Development Immersive', price: '8000', duration: '12 weeks', start_date: '12.01.2015', max_capacity: '25', city: 'London')
co2 = Course.create(name: 'User Experience Design Immersive', price: '6000', duration: '10 weeks', start_date: '16.03.2015', max_capacity: '10', city: 'New York City')
co3 = Course.create(name: 'Product Management Immersive', price: '6000', duration: '10 weeks', start_date: '24.06.2015', max_capacity: '15', city: 'Seattle')
co4 = Course.create(name: 'Front End Web Development', price: '5000', duration: '4 weeks', start_date: '12.09.2015', max_capacity: '12', city: 'Hong Kong')
co5 = Course.create(name: 'Data Science', price: '3000', duration: '3 weeks', start_date: '03.05.2015', max_capacity: '25', city: 'Melbourne')

u1 = User.create!(name: 'Vinisha Hathiramani', email: 'vinishash@gmail.com', password: 'cuddles123', password_confirmation: 'cuddles123', role: 'admin')
u2 = User.create!(name: 'Natalie Loh', email: 'natalie@loh.com', password: 'natalie', role: 'user')


ca1.classrooms << cl1
ca2.classrooms << cl2
ca3.classrooms << cl3
ca4.classrooms << cl4
ca5.classrooms << cl5 << cl6

cl1.courses << co1
cl2.courses << co2
cl3.courses << co3 
cl4.courses << co4 
cl5.courses << co5

co1.users << u1
co2.users << u2


