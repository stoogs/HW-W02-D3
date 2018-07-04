require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @whiskey = Drink.new("Whiskey", 3, 4)
    @rakia = Drink.new("Rakia", 3, 4)
    @gin = Drink.new("Gin", 5, 5)
    @beer = Drink.new("Beer", 2, 3)

  end

end
