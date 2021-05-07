# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

x = 1
results = []

while x < 5
  url = "http://tmdb.lewagon.com/movie/top_rated?&language=en-US&page=#{x += 1}"
  url_string = open(url).read
  movies = JSON.parse(url_string)
  results += movies["results"]
end

puts 'Cleaning DB'
Movie.destroy_all
puts 'DB is clean'

puts "creating movies"

results.each do |movie|
  Movie.create(
    title: movie["title"],
    overview: movie["overview"],
    poster_url: "https://image.tmdb.org/t/p/original#{movie["poster_path"]}",
    rating: movie["vote_average"]
  )
  puts "#{movie["title"]} created"
end
