# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0166100782", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0166100783", category: "italian"}
bristol = {name: "Bristol", address: "75008 Paris", phone_number: "0166100784", category: "french"}
cabidinho = {name: "Cabidinho", address: "Rua Paulo Barreto 66, Rio de Janeiro", phone_number: "0166100785", category: "french"}
oppaa = {name: "Oppaa", address: "Kei Huan 99, Beijin", phone_number: "0166100786", category: "chinese"}


[dishoom, pizza_east, bistrol, cabidinho, oppaa].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
