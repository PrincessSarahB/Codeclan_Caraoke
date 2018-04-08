
class Room
  attr_reader :room_name, :guest, :till, :song, :room_capacity, :fee, :bar
  def initialize(room_name, guest, till, song, room_capacity, fee, bar)

    @room_name = room_name
    @guest = []
    @till = till
    @song = []
    @room_capacity = room_capacity
    @fee = fee
    @bar = bar


  end


  def guest_count()
    return @guest.count
  end


  def check_in(guest)
    if !room_full && can_pay_entry?(guest)
      guest.money -= @fee
      @till += @fee
      @guest.push(guest)
      return true
    else
      return false
    end
  end

  def check_out(guest)
    @guest.delete(guest)
  end

  def song()
    return @song.count
  end

  def add_song(song)
    @song.push(song)
  end

  def room_full()
    if guest_count == @room_capacity
      return true
    else
      return false
    end
  end

  def can_pay_entry?(guest)
    if @fee <= guest.money
      return true
    end
  end

  def favourite_song(guest)
    # if @song.find {|title, artist| title == guest.fav_song.title && artist == guest.fav_song.artist}
    for song in @song
      if song.title == guest.fav_song.title && song.artist == guest.fav_song.artist
        return "woohoo, that's my favourite song!"
      else
        return "booooo!"
      end
    end
  end



end
