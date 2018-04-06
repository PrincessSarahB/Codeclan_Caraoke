require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
class RoomTest < MiniTest::Test

def setup()
  @guest = Guest.new("Dave", 50)
@song = Song.new("Monkey Wrench", "Foo Fighters")
  @room = Room.new("Room 1", 0, 100, @song)

end

def test_room_name
  assert_equal("Room 1", @room.name)
end

def test_guest_count
assert_equal(0, @room.guest_count)
end

def test_till_count
assert_equal(100, @room.till_count)
end
end
