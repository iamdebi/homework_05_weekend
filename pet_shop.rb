def pet_shop_name(name)
  return name[:name]
end

def total_cash(name)
  return name[:admin][:total_cash]
end

def add_or_remove_cash(name, amount)
  name[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  pet_shop[:admin][:pets_sold] += amount
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
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet_shop[:name]
    else
      return nil
    end
  end
end


def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet[:name].delete(pet_name)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].size()
end

def add_pet_to_customer(customer, pet_name)
  customer[:pets].push(pet_name)
end


def customer_can_afford_pet(customer, pet_name)
  customer_funds = customer[:cash]
  for pet in @pet_shop[:pets]
    if (pet[:name] == pet_name)
      cost_pet = pet[:name]
    end
    if (customer_funds >= cost_pet)
    end
  end
end
