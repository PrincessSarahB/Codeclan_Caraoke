class Bar

attr_reader :drink
attr_accessor :bar_till, :guest
def initialize(drink, bar_till, guest)

  @drink = drink
@bar_till = bar_till
@guest = guest

end

def can_buy_drink(guest)
  for this_drink in @drink
    if this_drink.price <= guest.money
return true
else
  return false
end
end
end

def find_drink_by_name(name)
if result = @drink.find {|drink| drink.name == name}
return true
else
  return false
end
end 

def serve(drink, guest)
  if find_drink_by_name(drink.name) && can_buy_drink(guest)
    @bar_till += drink.price
    guest.money -= drink.price
  return true
else
  return false
end
end


end
