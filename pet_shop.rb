def pet_shop_name(name)
  return name[:name]
end

def total_cash(name)
return name[:admin][:total_cash]
end

def add_or_remove_cash(name, amount)
  name[:admin][:total_cash] += amount
end

def pets_sold(name)
  name[:pets].pop()
end


# def increase_pets_sold(name, amount)
#
# end

def stock_count(name)
  name[:pets].size
end

def pets_by_breed (name, breed)
  breed_found = []
  for dog in pets
    if breed == dog
      breed_found.push(breed)
    end
  return breed_found.size()
  end
end
