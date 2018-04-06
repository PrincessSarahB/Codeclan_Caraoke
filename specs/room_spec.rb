require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
class RoomTest < MiniTest::Test

def setup()
  @guest1 = Guest.new("Dave", 50)
  @guest2 = Guest.new("Jordyn", 60)
  @guest3 = Guest.new("Virginia", 40)
  @guest = [@guest1, @guest2, @guest3]
@song1 = Song.new("Monkey Wrench", "Foo Fighters")
@song2 = Song.new("Song 2", "Blur")
@song = [@song1, @song2]
  @room = Room.new("Room 1", @guest, 100, @song, 3)

end

def test_room_name()
  assert_equal("Room 1", @room.name)
end

def test_guest_count()
assert_equal(0, @room.guest_count)
end

def test_till_count()
assert_equal(100, @room.till_count)
end

def test_guest_checks_in()
  @room.check_in(@guest1)
assert_equal(1, @room.guest_count)
end

def test_guest_checks_out()
  @room.check_out(@guest1)
  assert_equal(0, @room.guest_count)
end

def test_room_has_songs__added()
  @room.add_song(@song2)
assert_equal(1, @room.song)
end

def test_room_capacity_full_return_true()
assert.equal(true, @room.room_full?())
end
end
