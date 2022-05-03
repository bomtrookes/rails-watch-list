# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
List.destroy_all
Bookmark.destroy_all

puts "Creating Movies..."
Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
puts "Movies Created..."

puts "Creating Lists..."
List.create(name: "Favourite Movies Ever")
List.create(name: "10 Movies To Watch When It's Raining")
List.create(name: "Tarantino Tuesday Night")
List.create(name: "100 Films To See Before You Die")
puts "Lists Created..."

puts "Creating Bookmarks..."
Bookmark.create!(comment: "Harry said it was good", movie: Movie.all.sample, list: List.all.sample)
Bookmark.create(comment: "Saw this on buzzfeed", movie: Movie.all.sample, list: List.all.sample)
Bookmark.create(comment: "Yet to actually watch these...", movie: Movie.all.sample, list: List.all.sample)
Bookmark.create(comment: "Sounded good", movie: Movie.all.sample, list: List.all.sample)
puts "Bookmarks Created..."

# chain commands in the terminal using '&&'
# rails db:drop && rails db:create && rails db:migrate && rails db:seed
