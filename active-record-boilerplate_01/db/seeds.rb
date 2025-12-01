# This is where you can create initial data for your app.
require 'faker'

puts "Creating restaurants..."


# tour_d_argent = Restaurant.new(name: "La Tour d'Agent")
# tour_d_argent.save

# babel = Restaurant.new(name: "babel").save

50.times do
  restaurant = Restaurant.new(name: Faker::Company.name, address: "#{Faker::Address} #{Faker::Address.city}", rating: rand(0..5))
  restaurant.save!
end

puts "finished"
