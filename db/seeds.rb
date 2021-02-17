# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
sample_category = ["chinese", "italian", "japanese", "french", "belgian"]
10.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: sample_category.sample)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
