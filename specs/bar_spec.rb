require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class BarTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("vodka", 5.00)
    @drink2 = Drink.new("wine", 4.00)
    @drink3 = Drink.new("beer", 3.00)
  @drink = []
      @bar = Bar.new(@drink, 100)

    end

def test_bar_has_drinks
assert_equal()
end
  end
