require('minitest/autorun')
require('minitest/rg')
require_relative('../food')

class FoodTest < MiniTest::Test

  def setup
    @pizza = Food.new("Pizza", 6, 10)
    @crisps = Food.new("Crisps", 1, 1)
    @burger = Food.new("Burger", 5, 9)
    @nuts = Food.new("Nuts", 1, 2)

  end

end
