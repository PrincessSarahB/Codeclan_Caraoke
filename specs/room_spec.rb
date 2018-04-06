require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
class RoomTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Dave", 50.00)
    @guest2 = Guest.new("Jordyn", 60.00)
    @guest3 = Guest.new("Virginia", 40.00)
    @guest4 = Guest.new("Violet", 20.00)
    @guest = [@guest1, @guest2, @guest3]
    @song1 = Song.new("Monkey Wrench", "Foo Fighters")
    @song2 = Song.new("Song 2", "Blur")
    @song = [@song1, @song2]
    @room = Room.new("Room 1", @guest, 100, @song, 3, 5.00)

  end

  def test_room_name()
    assert_equal("Room 1", @room.room_name)
  end

  def test_guest_count()
    assert_equal(0, @room.guest_count)
  end

  def test_till_count()
    assert_equal(100, @room.till)
  end

  def test_guest_checks_in()
    @room.check_in(@guest1)
    assert_equal(1, @room.guest_count)
  end

  def test_guest_checks_out()
    @room.check_in(@guest1)
    @room.check_in(@guest2)
    @room.check_out(@guest1)
    assert_equal(1, @room.guest_count)
  end

  def test_room_has_songs__added()
    @room.add_song(@song2)
    assert_equal(1, @room.song)
  end

def test_can_pay_entry?

assert_equal(true, @room.can_pay_entry?(@guest1))

end

def test_guest_money_goes_down
@room.check_in(@guest1)
assert_equal(45.00, @guest1.money)
end

  def test_till_money_goes_up
@room.check_in(@guest1)
assert_equal(105.00, @room.till)
  end

  def test_room_capacity_full_return_true
@room.check_in(@guest1)
@room.check_in(@guest2)
@room.check_in(@guest3)
assert_equal(true, @room.room_full)
  end

def test_guest_checks_in__room_full
  @room.check_in(@guest1)
  @room.check_in(@guest2)
  @room.check_in(@guest3)
assert_equal(false, @room.check_in(@guest4))

end


end
