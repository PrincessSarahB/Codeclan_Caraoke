
class Room
  attr_reader :room_name, :guest, :till, :song, :room_capacity, :fee
  def initialize(room_name, guest, till, song, room_capacity, fee)

    @room_name = room_name
    @guest = []
    @till = till
    @song = []
    @room_capacity = room_capacity
    @fee = fee


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

end
