require("minitest/rg")
require("minitest/autorun")
require_relative("../food.rb")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customers.rb")

  class PubTest < MiniTest::Test

  def setup
    @drink1 = Drinks.new("Punk IPA", 4.6, 0.04)
    @drink2 = Drinks.new("Guinness", 5.2, 0.04)
    @drink3 = Drinks.new("Coors", 4.2, 0.03)
    @drink4 = Drinks.new("Tennent's", 4.6, 0.05)

    @stock = [
      { brand: @drink1, amount: 100},
      { brand: @drink2, amount: 200},
      { brand: @drink3, amount: 90},
      { brand: @drink4, amount: 60}
    ]

    @chanter = Pub.new("Chanter", 1000, @stock)

    @customer1 = Customers.new("Mike", 50, 26, 4.5)
    @customer2 = Customers.new("Wee Dave",50, 17, 0.00)
    @customer3 = Customers.new("Monica",50, 23, 5.1)
  end

  def test_get_cash
    @customer1.buy_drink(@drink4)
    assert_equal(1004.6, @chanter.get_cash(@drink4.price))
  end

  def test_refuse_customer()
    assert_equal("Sorry, get out",@chanter.refuse_customer(@customer2,@drink4))
   end

  def test_accepted_customer()
    assert_equal("There you go",@chanter.refuse_customer(@customer1, @drink4))
  end

  def test_customer_too_drunk()
    assert_equal("Sorry, get out", @chanter.refuse_customer(@customer3, @drink1))
  end

  def test_stock_value()
    assert_equal(2154, @chanter.stock_value(@stock))
  end

end
