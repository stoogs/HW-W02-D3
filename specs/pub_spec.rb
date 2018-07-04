require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../food')


class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Rising sun", 100, @bar, 20)
    @whiskey = Drink.new("Whiskey", 3, 4)
    @rakia = Drink.new("Rakia", 3, 4)
    @gin = Drink.new("Gin", 5, 5)
    @beer = Drink.new("Beer", 2, 3)
    @bar = {whiskey: 5, rakia: 5, gin: 5, beer: 5}
    @pizza = Food.new("Pizza", 6, 10)

  end

def test_name
  assert_equal("Rising sun", @pub.name)
end

def test_add_money_to_till
  @pub.add_money_to_till(@gin)
  assert_equal(105, @pub.till)
end

def test_stock_level
  @pub.stock_level_add
  assert_equal(21, @pub.stock)
  @pub.stock_level_reduce
  assert_equal(20, @pub.stock)
end

def test_stock_value
 check = @pub.stock_value(@bar)
 assert_equal(20, check)

end
end
