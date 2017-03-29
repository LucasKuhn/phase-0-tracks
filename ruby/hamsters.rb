#hamster name
puts "What is your name?"
hamster = gets.chomp
puts "What is his volume level?"
volume = gets.chomp.to_i
puts "What is its fur color?"
color = gets.chomp
puts "What is his age?"
age = gets.chomp.to_i
if age == 0
  age = nil
end
puts "Is he a good candidate for adoption?"
adoption = gets.chomp


puts "Wellcome #{hamster}!"
puts "I see your volume is #{volume}!"
puts "I love to see your #{color} fur!"
if age == nil
  puts "You don't know your age?"
else
puts "And you are so young! Just #{age}!"
end
if adoption == 'yes'
  puts "You are good for adoption"
elsif adoption == 'no'
  puts "Sadly we can't adopt you :("
else 
  puts "We are not sure what to do with you"
end

