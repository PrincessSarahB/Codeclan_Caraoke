require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../drinks.rb")

class BarTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("vodka", 5.00)
    @drink2 = Drink.new("wine", 4.00)
    @drink3 = Drink.new("beer", 3.00)
  @drink = [@drink1, @drink2]
      @bar = Bar.new(@drink, 100)

    end

def test_bar_has_drinks
assert_equal(2, @drink.count)
end

def test_bar_has_till
assert_equal(100, @bar.bar_till)
end
  end
