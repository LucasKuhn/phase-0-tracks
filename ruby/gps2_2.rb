# ------ PSEUDO CODE
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # separate entries with split built-in method (array)
 # iterate through the array to put items into a new hash
  # set default quantity as the value for each key
  # print the list to the console [can you use one of your other methods here?]
# output: hash of the items with key and default value

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
 # take the list. Add the name as a key and quantity as a value
# output: return updated list as a hash

# Method to remove an item from the list
# input: list, item name
# steps: 
 # take the list. Remove the key/value pair with a built-in method
# output: return updated list as a hash

# Method to update the quantity of an item
# input: list, item, quantity
# steps:
 # take the list. Choose the key and set the new quantity as the value
# output: list with the updated key/value pair

# Method to print a list and make it look pretty
# input: list
# steps:
 # iterate through the hash to print the items as key and quantities and value
# output: nicely printed list

#--- METHODS 
def create_list(items, quantity=1)
 item_array = items.split(' ')
 item_hash = {}
 item_array.each do |items|
  item_hash[items] = quantity
  end 
 p item_hash # p will both print and return # puts will print but will not return. It will return nil.
end 

def add_item(list, item, quantity=1)
 list[item] = quantity
end 

def remove_item(list, item)
  list.delete(item)
end

def update_quantity(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  puts "-----------------"
  puts "Here is your list:"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}" 
  end
  puts "-----------------"
end

# --- DRIVER CODE
new_list = create_list("carrots apples cereal pizza")
add_item(new_list, "Lemonade", 2)
add_item(new_list, "Tomatoes", 3)
add_item(new_list, "Onions")
add_item(new_list, "Ice Cream", 4)
remove_item(new_list, "Lemonade")
update_quantity(new_list,"Ice Cream", 1)
print_list(new_list)

# --- REFLECT
# I realized pseudo-coding makes the process easier, 
# Everything was super smooth.
# A method has an implicit return that is the last line of code
# You can pass whatever you want into a method, even other methods
# The concept that you can set a value to be passed to an argument
# (Like the quantity=1) in case no argument is sent is super useful!
# Generally speaking, the challenge was fun to do and we didn't have any setbacks.