require_relative('pub')

class Customer

  attr_reader :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)

@name = name
@wallet = wallet
@age = age
@drunkenness = drunkenness

end

  def customer_pay_for_drink(drink, pub)
  if @age >18 && @drunkenness <= 21
    then
  @wallet -= drink.price
  @drunkenness += drink.units
  pub.till -= drink.price
  ###ABOVE!! update pub.till because it's passed in.
  ### @emily.customer_pay_for_drink(@gin, @pub)###
  end
  end

def test_drunk
  if @drunkenness > 20
    return true
  end
end

def customer_buy_food(food)
  @drunkenness -= food.rejuvenation
  end

end
