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
end

def find_drink_by_name(name)
result = @drink.find {|drink| drink.name == name}
return result.name
end

end
