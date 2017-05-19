# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.delete_all
State.delete_all

state1 = State.create!(name: "North-Holland")
state2 = State.create!(name: "South-Holland")
state3 = State.create!(name: "Middle-Holland")

states_count = State.all.length
puts "#{states_count} states were created."

City.create!([
  { name: "Amsterdam", health: 'good', state: state1 },
  { name: "Rotterdam", health: 'bad', state: state2 },
  { name: "Utrecht", health: 'okay', state: state3 },
])

cities_count = City.all.length
puts "#{cities_count} cities were created."
