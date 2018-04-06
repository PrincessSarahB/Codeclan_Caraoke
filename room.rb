class Room

def initialize(room_name, guest_count, till, song)

@room_name = room_name
@guest_count = guest_count
@till = till
@song = song

end

def name()
return @room_name
end

def guest_count()
  return @guest_count
end

def till_count()
return @till
end
end
