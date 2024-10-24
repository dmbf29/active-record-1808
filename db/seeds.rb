require 'faker'
require 'open-uri'
# This is where you can create initial data for your app.
# start off with some either fake/real instance to play around in your app

puts 'Cleaning the DB...'
Restaurant.destroy_all

# puts 'Creating restaurants...'
# sukiya = Restaurant.new(
#   name: 'Sukiya',
#   address: 'Meguro',
#   rating: 2
# )
# sukiya.save

# mos_buger = Restaurant.new(
#   name: 'Mos Burger',
#   address: 'Meguro',
#   rating: 1
# )
# mos_buger.save

# 30.times do
#   restaurant = Restaurant.new(
#     name: Faker::Restaurant.unique.name,
#     address: Faker::Address.street_address,
#     rating: rand(1..5)
#   )
#   restaurant.save
# end
url = 'https://gist.githubusercontent.com/yannklein/5d8f9acb1c22549a4ede848712ed651a/raw/3daec24bcd833f0dd3bcc8cee8616a731afd1f37/cafe.json'
json = URI.open(url).read
cafes = JSON.parse(json)
cafes.each do |cafe_hash|
  restaurant = Restaurant.new(
    name: cafe_hash['title'],
    address: cafe_hash['address'],
    rating: rand(1..5)
  )
  restaurant.save
end
puts "... created #{Restaurant.count} restaurants."
