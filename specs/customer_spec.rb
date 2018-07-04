require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')
require_relative('../food')

class CustomerTest < MiniTest::Test

def setup
@pub = Pub.new("Rising sun", 100, @bar, 20)
@emily = Customer.new("Emily", 100, 33, 19)
@barry = Customer.new("Barry", 50, 39, 30)
@sam = Customer.new("Sam", 15, 16, 0)
@gin = Drink.new("Gin", 5, 5)
@rakia = Drink.new("Rakia", 3, 4)
@pizza = Food.new("Pizza", 6, 10)
end


def test_name
  assert_equal("Emily", @emily.name)
end

def test_wallet
  assert_equal(100, @emily.wallet)
end

  def test_customer_get_drink
  @emily.customer_pay_for_drink(@gin, @pub)
  assert_equal(95, @emily.wallet)
  assert_equal(24, @emily.drunkenness)
  assert_equal(95, @pub.till)
  end

def test_customer_is_drunk
  check = @barry.test_drunk
  assert_equal(true, check)
end

def test_customer_buy_food
  @barry.customer_buy_food(@pizza)
  assert_equal(20, @barry.drunkenness)
  end

end
