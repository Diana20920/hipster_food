require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Minitest::Test
  def test_it_exists_and_has_readable_attributes
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})


    assert_instance_of Item, item1
    assert_instance_of Item, item2
  end
end

# def test
#
#
# end

# food_truck = FoodTruck.new("Rocky Mountain Pies")

# item2.name #=> "Apple Pie (Slice)"
# item2.price #=> 2.50
