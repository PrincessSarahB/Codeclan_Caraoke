require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")
class GuestTest < MiniTest::Test

def setup()
@fav_song = Song.new("Hey Jude", "The Beatles")
@guest = Guest.new("Dave", 50.00, @fav_song)

end

def test_check_guest_name
assert_equal("Dave", @guest.name)
end

def test_check_guest_money
assert_equal(50, @guest.money)
end

def test_fav_song
  assert_equal("Hey Jude", @guest.fav_song.title)
  assert_equal("The Beatles", @guest.fav_song.artist)
end

end
