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
Flat.destroy_all

puts "Creating 5 flats"
Flat.create!(name: "Hello", address: "Nantes", description: "hello this is a description", price_per_night: "125", number_of_guests: "225")
Flat.create!(name: "Je suis un Flat", address: "Nantes aussi", description: "hello this is a description", price_per_night: "125", number_of_guests: "225")
Flat.create!(name: "Chaise", address: "Paris", description: "hello this is a description", price_per_night: "125", number_of_guests: "225")
Flat.create!(name: "J'ai vraiment pas d'idées", address: "Montpellier", description: "hello this is a description", price_per_night: "125", number_of_guests: "225")
Flat.create!(name: "Le Lion et L'agneau", address: "Nantes", description: "hello this is a description", price_per_night: "125", number_of_guests: "225")

puts "Finished! Created #{Flat.count} flats."
