# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
french = { name: "Baguette", address: "Paris", category: "french" }
jap = { name: "Sushis-Land", address: "Tokyo", category: "japanese" }
italian = { name: "PastaCliché", address: "Rome", category: "italian" }
belgian = { name: "Fritas&Beer", address: "Bruxelles", category: "belgian" }
chinese = { name: "Cantonal", address: "Pekin", category: "chinese" }

[french, jap, italian, belgian, chinese].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
