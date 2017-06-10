# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.new
u1.email = "a@a.com"
u1.password = "12341234"
u1.password_confirmation = "12341234"
u1.first_name = "Stephie"
u1.last_name = "Hass"
u1.user_city_id = 1
u1.event_id = 1
u1.save

puts "#{User.count} users in the database"

Event_listing.destroy_all

l1 = Event_listing.new
event_listing.user_id = u1.id
event_listing.event_name = "Event1"
event_listing.event_type = "concert"
event_listing.event_date= Date.parse("2017/09/12")
event_listing.location_id = 1
event_listing.event_description = "description"
event_listing.creator_id = 1
l1.save

puts "#{Event_listing.count} events in the database"
