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

def increase_pets_sold(name, amount)
  name[:pets].size()
end

def stock_count(name)
  name[:pets].size
end

def pets_by_breed(pet_shop, pet_type)
  found_breeds = []
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_type
      found_breeds.push(pet_type)
    end
  end
  return found_breeds
end


def find_pet_by_name(pet_shop, pet_name)
  if pet_name == pet_shop[:pets][0][:name]
    return pet_name
  end
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet[:name].delete(pet_name)
    end
  end
end 
