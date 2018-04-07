require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class BarTest < MiniTest::Test

  def setup()
    @drink = [ {drink_name: "vodka",
      drink_price: 5.00},
      {drink_name: "beer", drink_price: 3.00},
      {drink_name: "wine", drink_price: 4.00}]
      @bar = Bar.new(@drink)

    end

def test_bar_has_drinks
assert_equal([ {drink_name: "vodka",
  drink_price: 5.00},
  {drink_name: "beer", drink_price: 3.00},
  {drink_name: "wine", drink_price: 4.00}], @drink)
end
  end
