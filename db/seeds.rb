require "open-uri"
require "json"

puts "Starting seeds..."
# Movie.create(
#   title: "Wonder Woman 1984",
#   overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
#   poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
#   rating: 6.9
#   )
# Movie.create(
#   title: "The Shawshank Redemption",
#   overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison",
#   poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
#   rating: 8.7
#   )
# Movie.create(
#   title: "Titanic",
#   overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.",
#   poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
#   rating: 7.9
#   )
# Movie.create(
#   title: "Ocean's Eight",
#   overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.",
#   poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg",
#   rating: 7.0)

file = URI.parse("https://tmdb.lewagon.com/movie/top_rated").read
json_file = JSON.parse(file)
movies = json_file["results"]
movies.each do |movie|
  # p movie["original_title"]
  # p movie["overview"]
  poster_url = "https://image.tmdb.org/t/p/w500#{movie["backdrop_path"]}"
  p poster_url
end


puts "Finished seeding"
