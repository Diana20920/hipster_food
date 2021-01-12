class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name        = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    food_trucks << food_truck
  end

  def food_truck_names
    food_trucks.collect do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    # "...takes an argument of an item represented as a String"
    food_trucks.find_all do |food_truck|
      food_truck.inventory.include?(item)
    end
  end
end
