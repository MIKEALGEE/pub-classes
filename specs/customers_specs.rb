require_relative("../food.rb")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customers.rb")
require("minitest/rg")
require("minitest/autorun")

class CustomersTest < MiniTest::Test


  def setup
    @customer1 = Customers.new("Mike", 50, 26, 0.00)
    @drink1 = Drinks.new("Punk IPA", 4.6, 0.04)
    @drink2 = Drinks.new("Guinness", 5.2, 0.04)
    @drink3 = Drinks.new("Coors", 4.2, 0.03)
    @drink4 = Drinks.new("Tennent's", 4.6, 0.05)
    @chanter = Pub.new("Chanter", 1000, [@drink1, @drink2, @drink3, @drink4])
    @food1 = Food.new("Pizza", 3.50, 0.03)
  end

  def test_return_customer_name()
    assert_equal("Mike",@customer1.name)
  end

  def test_return_customer_age()
    assert_equal(26,@customer1.age)
  end

  def test_drunkenness()
    assert_equal(0.00,@customer1.drunkenness())
  end

  def test_buy_drink()
    assert_equal(45.4,@customer1.buy_drink(@drink4))
  end

  def test_buy_food()
    assert_equal(46.5,@customer1.buy_food(@food1))
  end

  def test_update_drunkeness_level
    @customer1.takes_drink(@drink2)
    assert_equal(0.04,@customer1.drunkenness())
  end

  def test_eat_food()
    @customer1.takes_drink(@drink4)
    @customer1.eat_food(@food1)
    assert_equal(0.02,@customer1.drunkenness.round(2))
  end












end
