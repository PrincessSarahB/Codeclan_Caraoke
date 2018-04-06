require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")
class GuestTest < MiniTest::Test

def setup()
@fav_song = Song.new("Monkey Wrench", "Foo Fighters")
@guest = Guest.new("Dave", 50, @fav_song)

end

end
