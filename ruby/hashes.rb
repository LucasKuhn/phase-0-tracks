client = {}

puts "Name:"
client[:name] = gets.chomp
puts "Age:"
client[:age] = gets.chomp.to_i
puts "Live with parents? (yes/no)"
situation = gets.chomp
if 
  situation == 'yes'
    client[:living_with_mom] = true
  elsif situation == 'no'
    client[:living_with_mom] = false
  else
    client[:living_with_mom] = situation
end

p client

puts "Type the name of an option below if you want to change something:"
puts client.keys
option = gets.chomp
if option == 'none'
  puts "Sweet!"
else
 puts "Type the new data:"
 client[option.to_sym] = gets.chomp
end

p client

exit