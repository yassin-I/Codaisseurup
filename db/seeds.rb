# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all

house_party = Category.create(name: "House_party")
tempting_terrace = Category.create(name: "Tempting Terrace")

yassin = User.create ("email: yassin@live.com" password:123456)
event = Event.create (name: "cool event", description: "walking in holland")
DateTime.new(2018,02,03),
ends_at: DateTime.new(2019,05,07),
