class Pub

attr_accessor :name, :till, :stock

def initialize(name, till, stock)

  @name = name
  @till = till
  #@drinks = drinks
  @stock = stock

end

def get_cash(drink)
  @till += drink
end

def stock_value(stock)
  total_value = 0
  for item in stock
    price = item[:brand].price
    amount = item[:amount]
    total_value += price * amount
  end
  return total_value
end

def refuse_customer(customer, drink)
  if customer.age > 18 && customer.drunkenness < 5.0
    customer.buy_drink(drink)
    return "There you go"
  else
    return "Sorry, get out"
  end
end





















end
