# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning database..."
Booking.destroy_all
Product.destroy_all
Review.destroy_all
User.destroy_all

puts "."
puts ".."
puts "..."
puts "Database Cleaned"

#Users

file = File.open(Rails.root.join("app/assets/images/image-not-found.png"))
alex = User.create!(first_name: "Alex", name: "CRVD", email: "al123@gmail.com", password:"secret")
alex.photo.attach(io: file, filename: "profil_img.jpg", content_type: "image/jpeg")

#Products

file = File.open(Rails.root.join("app/assets/images/image-not-found.png"))
tente = Product.create!(name: "Tente 6 places", category: "Camping", description: "tente 6 places queshua à arceaux Arpenaz", price: "50", user: alex)
tente.photo.attach(io: file, filename: "tente1.png", content_type: "image/jpeg")

file = File.open(Rails.root.join("app/assets/images/image-not-found.png"))
doucheportable1 = Product.create!(name: "Douche solaire 10L", category: "Camping", description: "DOUCHE SOLAIRE POUR LE CAMPING - 10 LITRES", price: "8", user: alex)
doucheportable1.photo.attach(io: file, filename: "douche1.png", content_type: "image/jpeg")

file = File.open(Rails.root.join("app/assets/images/image-not-found.png"))
fauteuil1 = Product.create!(name: "Fauteuil pliant", category: "Camping", description: "FAUTEUIL PLIANT POUR LE CAMPING - BASIC", price: "4", user: alex)
fauteuil1.photo.attach(io: file, filename: "fauteuil1.png", content_type: "image/jpeg")

file = File.open(Rails.root.join("app/assets/images/image-not-found.png"))
table1 = Product.create!(name: "table pliante 6p", category: "Camping", description: "GRANDE TABLE DE CAMPING PLIANTE - 6 À 8 PERSONNES", price: "13", user: alex)
table1.photo.attach(io: file, filename: "table1.png", content_type: "image/jpeg")
