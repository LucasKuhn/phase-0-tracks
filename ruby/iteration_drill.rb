# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
zombie_apocalypse_supplies.each {|x| print x, "*"}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# zombie_apocalypse_supplies.each do |x|


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
puts"What do you search?"
option = gets.chomp.downcase
zombie_apocalypse_supplies.each do |x|
  if x == option
    puts "Yes, there is #{option}!"
    break
  elsif x == zombie_apocalypse_supplies.last
    puts "There is none"
  end
end

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
until zombie_apocalypse_supplies.length == 5
  zombie_apocalypse_supplies.pop 
  zombie_apocalypse_supplies.length
end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
merged_supplies = zombie_apocalypse_supplies | other_survivor_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.each do |animal,year|
  puts "#{animal}-#{year}"
  puts "*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
extinct_animals.each do |animal,year|
  if year >= 2000
    extinct_animals.delete("#{animal}")
  end
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
extinct_animals.each {
  |animal, year| 
  extinct_animals[animal] = (year)+3
}

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
puts "What animal do you want to check if was extinct?"
search = gets.chomp
extinct_animals.each {
  |animal, year| 
  if animal == search
    puts "Yes, it was extict in #{year}"
    break
  elsif animal == extinct_animals.keys.last
    puts "Not according to our list!"
  end
}

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

# -- Couldn't find an easier way :s
not_extinct = extinct_animals.rassoc(1914)
extinct_animals.delete_if {|animal,year| animal == 'Passenger Pigeon'}
