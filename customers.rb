class Customers

  attr_accessor :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)

    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness

  end


  def buy_drink(drink)
    @wallet -= drink.price
  end

  def buy_food(food)
    @wallet -= food.price
  end

  def takes_drink(drink)
    @drunkenness += drink.alcohol_level
  end

  def eat_food(food)
    @drunkenness -= food.rejuve


  end

























end
