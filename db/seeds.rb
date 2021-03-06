require "open-uri"

puts "Cleaning database..."
User.destroy_all
Anime.destroy_all

puts "Creating User..."
User.create!(email: "user@gmail.com", password: "password")

puts "Creating Animes"

# --------------------------------------------------------------------------------------------------------
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
anime = Anime.create!(
  title: "tata", 
  description: "Light Yagami est un lycéen surdoué qui juge le monde actuel criminel, pourri et corrompu.", 
  parution_date: "01/12/2003", 
  category: "Thriller psychologique", 
  streaming_service: "netflix", 
  rating: 4
)

anime.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# --------------------------------------------------------------------------------------------------------
file = URI.open('https://fr.web.img5.acsta.net/pictures/18/01/18/14/35/2024405.jpg')
anime = Anime.create!(
  title: "Death note", 
  description: "Light Yagami est un lycéen surdoué qui juge le monde actuel criminel, pourri et corrompu.", 
  parution_date: "01/12/2003", 
  category: "Thriller psychologique", 
  streaming_service: "netflix", 
  rating: 4
)

anime.photo.attach(io: file, filename: 'deathnote.png', content_type: 'image/png')
# --------------------------------------------------------------------------------------------------------

puts "Finished"