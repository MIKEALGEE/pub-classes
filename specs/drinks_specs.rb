require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customers.rb")
require("minitest/rg")
require("minitest/autorun")

class DrinksTest < MiniTest::Test

  def setup
    @drink = Drinks.new("TENNENTS", 4.6, 0.05)
  end

  def test_drink_has_name
    assert_equal("TENNENTS", @drink.name())
  end

  def test_drink_has_price
      assert_equal(4.6, @drink.price())
  end

  def test_check_alcohol_level
    assert_equal(0.05, @drink.alcohol_level())
  end















end
