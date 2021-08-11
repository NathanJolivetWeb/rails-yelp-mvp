# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: 'Englos', phone_number: '0617836452', category: 'japanese' }
pasta_west = { name: 'Pasta West', address: 'Denain', phone_number: '0612736452', category: 'italian' }
pizza_east = { name: 'Pizza East', address: 'Dunkerque', phone_number: '0649532589', category: 'italian' }
buffalo = { name: 'Buffalo Grill', address: 'Lomme', phone_number: '0698764766', category: 'french' }
macdo = { name: 'Mc Donalds', address: 'Lille', phone_number: '0612555466', category: 'belgian' }

[dishoom, pasta_west, pizza_east, buffalo, macdo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts Restaurant.count
puts 'Finished!'
