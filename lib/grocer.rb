require 'pry'

def find_item_by_name_in_collection(name, collection)
  
  collection.each do |item_desc|
    item_desc.each do |key, item_name|
      if name == item_name
        return item_desc
      end
    end
  end
  if name != collection
    return nil 
  end
end

def consolidate_cart(cart)
  
  cart.each do |item|
    if !item[:count]
        item[:count] = 1
    else 
      item[:count] += 1
    end
  end
end


  