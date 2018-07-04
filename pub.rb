require_relative('customer')
class Pub

  attr_reader :name, :till, :bar, :stock
  attr_accessor :till
  def initialize(name, till, bar, stock)

@name = name
@till = till
@bar = {}
@stock = stock

end

def add_money_to_till(drink)
  @till += drink.price
end

def stock_level_add
  @stock += 1
end

def stock_level_reduce
  @stock -= 1
end

def stock_value(bar)

return bar[:whiskey] + bar[:gin] + bar[:rakia] + bar[:beer]

end
end
