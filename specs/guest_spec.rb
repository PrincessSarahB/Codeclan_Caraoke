require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")
class GuestTest < MiniTest::Test

def setup()
# @fav_song = Song.new("Monkey Wrench", "Foo Fighters")
@guest = Guest.new("Dave", 50.00)

end

def test_check_guest_name
assert_equal("Dave", @guest.name)
end

def test_check_guest_money
assert_equal(50, @guest.money)
end


end
