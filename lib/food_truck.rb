class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name      = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    return 0 if inventory.empty?
      inventory.sum do |name, quantity|
        quantity
      end

  end

  def stock(item, quantity)
    inventory[item] += quantity
  end
end
