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
  
  cart.each_with_object({}) do |(item), count_hash|
    if !item[:count]
        item[:count] = 0
    end
    item.count do
      if item > 1
        item[:count] += 1
    end
  end
end


  