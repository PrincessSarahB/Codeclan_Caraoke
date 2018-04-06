class Room

def initialize(room_name, guest, till, song, room_capacity)

@room_name = room_name
@guest = []
@till = till
@song = []
@room_capacity = room_capacity


end

def name()
return @room_name
end

def guest_count()
  return @guest.count
end

def till_count()
return @till
end

def check_in(guest)
  if @room.guest_count < @room_capacity
@guest.push(guest)
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

def room_full?(room)
if @room_capacity == room.guest_count()
  return true
else
  return false
end
end
end
