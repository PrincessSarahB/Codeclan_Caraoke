require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../bar.rb")
require_relative("../drinks.rb")
class RoomTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Monkey Wrench", "Foo Fighters")
    @song2 = Song.new("Song 2", "Blur")
    @song3 = Song.new("Hey Jude", "The Beatles")
    @song4 = Song.new("Sweet Caroline", "Neil Diamond")
    @song5 = Song.new("Encore", "Jay-Z")
    @song = [@song1, @song2]
    @guest1 = Guest.new("Dave", 50.00, @song3)
    @guest2 = Guest.new("Jordyn", 60.00, @song1)
    @guest3 = Guest.new("Virginia", 40.00, @song4)
    @guest4 = Guest.new("Violet", 20.00, @song2)
    @guest5 = Guest.new("Harper", 4.00, @song5)
    @guest = []

    @drink1 = Drink.new("vodka", 5.00)
    @drink2 = Drink.new("wine", 4.00)
    @drink3 = Drink.new("beer", 3.00)
    @drink = [@drink1, @drink2]
    @bar = Bar.new(@drink, 100)

    @room = Room.new("Room 1", @guest, 100, @song, 3, 5.00, @bar)

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

  def test_till_money_goes_up__guest_goes_down
    @room.check_in(@guest1)
    assert_equal(105.00, @room.till)
    assert_equal(45.00, @guest1.money)
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

  def test_guest_checks_in__guest_cannot_pay
    assert_equal(false, @room.check_in(@guest5))
  end

  def test_room_has_fav_song__has_song
    @room.add_song(@song3)
    assert_equal("woohoo, that's my favourite song!",@room.favourite_song(@guest1))
  end

  def test_room_has_fav_song__song_not_there
    @room.add_song(@song3)
    assert_equal("booooo!", @room.favourite_song(@guest5))
  end

  def test_guest_can_buy_drink__has_money
    assert_equal(true, @room.can_buy_drink(@guest1, @drink3))
  end
end
