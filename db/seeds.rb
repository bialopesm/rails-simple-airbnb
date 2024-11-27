# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.destroy_all

Flat.create!(
  name: 'First Flat',
  address: '1 Avenue',
  description: 'A lovely flat',
  price_per_night: 100,
  number_of_guests: 4
)

Flat.create!(
  name: 'Second Flat',
  address: '2 Avenue',
  description: 'A cozy flat',
  price_per_night: 50,
  number_of_guests: 2
)

Flat.create!(
  name: 'Third Flat',
  address: '3 Avenue',
  description: 'A modern flat.',
  price_per_night: 150,
  number_of_guests: 6
)

Flat.create!(
  name: 'Fourth Flat',
  address: '4 Avenue',
  description: 'A luxurious flat.',
  price_per_night: 200,
  number_of_guests: 8
)
