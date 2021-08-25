# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Restaurant::CATEGORY.sample -> to create a random value within the constant array.

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: Restaurant::CATEGORY.sample }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: Restaurant::CATEGORY.sample }
italian = { name: "Pasta's", address: "56A Shoreditch High St, London E1 6PQ", category: Restaurant::CATEGORY.sample }
pizza =  { name: " East", address: "56A Shoreditch High St, London E1 6PQ", category: Restaurant::CATEGORY.sample }
pas = { name: "Pas", address: "56A Shoreditch High St, London E1 6PQ", category: Restaurant::CATEGORY.sample }

[ dishoom, pizza_east, italian,pizza, pas ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
