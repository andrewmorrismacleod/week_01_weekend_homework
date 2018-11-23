def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_of_pets_sold)
  return pet_shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  return pet_shop[:pets].select { |pet| pet[:breed] == breed}
end

def find_pet_by_name(pet_shop, name)
  return pet_shop[:pets].select { |pet| pet[:name] == name}[0]
end

def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete_if { |pet| pet[:name] == name}
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end
