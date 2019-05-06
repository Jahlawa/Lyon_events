# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Event.destroy_all

5.times do
	users = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: "Anneaunymous@yopmail.com" )
end

##events = Event.create(start_date: Faker::Time.forward, duration: Faker::Time.between(DateTime.now, DateTime.now +1), title: Faker::Book.title, description: Faker::Lorem.paragraph, price: rand(1..1000), location: Faker::Address.city)