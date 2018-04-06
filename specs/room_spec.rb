require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
class RoomTest < MiniTest::Test

def setup()
@song = Song.new ("Monkey Wrench", "Foo Fighters")
  @room = Room.new("Room 1", 0, 100, @song)

end

end
