# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
pure = { name: 'Pure', address: 'Cormontaigne', category:'french', phone_number: '0320020405' }
clarance = { name: 'Clarance', address: 'Vieux Lille', category:'french', phone_number: '0320020405' }
bellezza = { name: 'Bellezza', address: 'Rue Royale', category:'italian', phone_number: '0320020405' }
jane = { name: 'Jane', address: 'Rue Faidherbe', category:'japanese', phone_number: '0320020405' }
weara = { name: 'Weara', address: 'Grand Place', category:'belgian', phone_number: '0320020405' }

[pure, clarance, bellezza, jane, weara].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
