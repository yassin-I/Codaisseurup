# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all



yassin = User.create(email:"yassin@live.com", password:"good")
house_party = Category.create(name:"House_party")
tempting_terrace = Category.create(name:"Tempting Terrace")


event = Event.create!(
name:"Birthday Party",
description:"It’s a Birthday Party",
location: "At Home",
price: 10.00,
capacity: 20,
includes_food: true,
includes_drinks: true,
starts_at:Time.now,
ends_at:(Time.now + 1.day),
active:true,
user: yassin,
)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499355523/event_vpswrb.jpg", event: event)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499355534/event_soma_mnkhqt.jpg", event: event)

Booking.create(event: event1, user: wouter, price: 50, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
Booking.create(event: event1, user: matt, price: 50, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)
