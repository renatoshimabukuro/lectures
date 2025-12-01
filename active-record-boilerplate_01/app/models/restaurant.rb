class Restaurant < ActiveRecord::Base
  # Create
  restaurant = Restaurant.new(name: "Dishoom")
  restaurant.save

  # Read - Read All or reading 1
  restaurants = Restaurant.all
  # Read 1
  # restaurant = Restaurant.find(id)

  # Update
  # restaurant = Restaurant.find(1)
  # restaurant.rating = 5
  # restaurant.save

  #Delete
    # restaurant = Restaurant.find(1)
    # restaurant.destroy
end
