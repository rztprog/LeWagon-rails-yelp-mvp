# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating 5 restaurants..."
restaurant1 = { name: "Dishoom1", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "0666" }
restaurant2 = { name: "Dishoom2", address: "7 Boundary St, London E2 7JE", category: "belgian", phone_number: "0666" }
restaurant3 = { name: "Dishoom3", address: "7 Boundary St, London E2 7JE", category: "belgian", phone_number: "0666" }
restaurant4 = { name: "Dishoom4", address: "7 Boundary St, London E2 7JE", category: "japanese", phone_number: "0666" }
restaurant5 = { name: "Dishoom5", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "0666" }

[ restaurant1, restaurant2, restaurant3, restaurant4, restaurant5 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"