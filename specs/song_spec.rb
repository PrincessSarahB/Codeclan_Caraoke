require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

def setup()

@song = Song.new("Monkey Wrench", "Foo Fighters")

end

def test_song_title
assert_equal("Monkey Wrench", @song.title)

end


def test_song_artist

assert_equal("Foo Fighters", @song.artist)
end


end
