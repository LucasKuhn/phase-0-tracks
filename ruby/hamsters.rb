#hamster name
puts "What is your name?"
hamster = gets.chomp
puts "What is his volume level?"
volume = gets.chomp.to_i
puts "What is its fur color?"
color = gets.chomp
puts "Is he a good candidate for adoption?"
adoption = gets.chomp
puts "What is his age?"
age = gets.chomp.to_i
if age == 0
  age = nil
end

