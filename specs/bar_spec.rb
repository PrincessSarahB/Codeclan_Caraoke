require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../drinks.rb")

class BarTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Dave", 50.00, "Monkey Wrench")
    @guest2 = Guest.new("Harper", 4.00, "song")
    @drink1 = Drink.new("vodka", 5.00)
    @drink2 = Drink.new("wine", 4.00)
    @drink3 = Drink.new("beer", 3.00)
  @drink = [@drink1, @drink2]
      @bar = Bar.new(@drink, 100.00, @guest)

    end

def test_bar_has_drinks
assert_equal(2, @drink.count)
end

def test_bar_has_till
assert_equal(100, @bar.bar_till)
end


  def test_guest_can_buy_drink__has_money
    assert_equal(true, @bar.can_buy_drink(@guest1))
  end

  def test_guest_can_buy_drink__not_enough_money

assert_equal(false, @bar.can_buy_drink(@guest2))
  end

  def test_find_drink_by_name
assert_equal(true, @bar.find_drink_by_name("vodka"))
  end

  def test_find_drink_by_name__drink_not_there
assert_equal(false, @bar.find_drink_by_name("whisky"))
  end

def test_serve()
  assert_equal(true, @bar.serve(@drink1, @guest1))
  assert_equal(105.00, @bar.bar_till)
  assert_equal(45, @guest1.money)
end
  end
