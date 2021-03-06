# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Anime.destroy_all

puts "Creating User..."
User.create!(email: "user@gmail.com", password: "password")

puts "Creating Animes"
Anime.create!(title: "Psycho-Pass", description: "Psycho-pass est une série d'animation cyberpunk japonaise produite par le studio Production I.G, co-réalisée par Katsuyuki Motohiro et Naoyoshi Shiotani", parution_date: "12/10/2012", category: "Cyberpunk", streaming_service: "netflix", rating: 3)

Anime.create!(title: "Death note", description: "Light Yagami est un lycéen surdoué qui juge le monde actuel criminel, pourri et corrompu.", parution_date: "01/12/2003", category: "Thriller psychologique", streaming_service: "netflix", rating: 4)

puts "Finished!"