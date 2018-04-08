class Bar

attr_reader :drink, :bar_till
def initialize(drink, bar_till)

  @drink = drink
@bar_till = bar_till
end

def can_buy_drink(drink, guest)
  for drink in @drink
if drink.price <= guest.money
return true
else
  return false
end
end
#on Sunday do this!
def find_drink_by_name(drink)
end
end
end
