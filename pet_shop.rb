
def pet_shop_name( shopname)
  return shopname[:name]
end 

def total_cash( shopname)
  return shopname[:admin][:total_cash]
end

def add_or_remove_cash( shopname, addition)
  return shopname[:admin][:total_cash] += addition
end

def add_or_remove_cash( shopname, subtraction)
  return shopname[:admin][:total_cash] += subtraction
end

def pets_sold( shopname)
  return shopname[:admin][:pets_sold]
end

def increase_pets_sold( shopname, number)
  return shopname[:admin][:pets_sold] += number
end

def stock_count( shopname)
  return shopname[:pets].count
end

def pets_by_breed( shopname, pet_type)
 pet_breed_array = []

   for pet in shopname[:pets]
     if pet[:breed] == pet_type
       pet_breed_array.push pet_type
     end
   end  

  return pet_breed_array
end

def find_pet_by_name( shopname, petname)
  for eachpet in shopname[:pets]
      if eachpet[:name] == petname
        return eachpet
      end
  end
  return nil
end

def remove_pet_by_name( shopname, petname)
     for pet in shopname[:pets]
       if pet[:name] == petname
          shopname[:pets].delete(pet)
       end
     end  
  find_pet_by_name( shopname, petname)

end

def add_pet_to_stock ( shopname, newpet )
  shopname[:pets][6] = {
    :name => "Mak",
    :pet_type => :dog,
    :breed => "Cocker Spaniel",
    :price => 6
  }
      return stock_count(shopname)
end

def customer_pet_count (customer)
   return customer[:pets].count
end

def add_pet_to_customer(customer, newpet)
  customer[:pets].push newpet
end



# def pets_by_breed(shopname, pet_type)
#   pet_array = []
#   [shopname[:pets].map{|x| x[:breed]}] << pet_array 
#   return pet_array("British Shorthair").count
# end

# def pets_by_breed(shopname, pet_type)
#   pet_array = [shopname[:pets].map{|x| x[:breed]}]
  
#   return pet_array.count(pet_type)

# end

# def pets_by_breed(shopname, breedtype)
#   pet_array = shopname[:pets].map{|x| x[:breed]}
#   pet_array.keep_if {|pet_type| pet_type = breedtype }

#   return pet_array.count
     
# end

