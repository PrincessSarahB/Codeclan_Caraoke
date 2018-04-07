require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test
def setup()

@drink1 = Drink.new("vodka", 5.00)
@drink2 = Drink.new("wine", 4.00)
@drink3 = Drink.new("beer", 3.00)


end

def test_drink_name()
assert_equal("vodka", @drink1.name)
end

def test_drink_price()
assert_equal(3.00, @drink3.price)
end


end
