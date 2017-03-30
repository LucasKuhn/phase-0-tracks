puts "How many employees will be processed?"
employees = gets.chomp.to_i
x=0
until x == employees 

  puts "What is your name?"
  name = gets.chomp
  puts "How old will you be the end of this year?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  year = gets.chomp.to_i
  puts "Would you like some fresh garlic bread?"
  bread = gets.chomp
  puts "Are in interested in the company's health insurance?"
  insurance = gets.chomp

  sentence = "Results inconclusive"
  if age == 2017-year && (bread == 'yes' || insurance == 'yes')
    sentence = "Probably not a vampire"
  end
  if age != 2017-year && (bread == 'no' || insurance == 'no')
    sentence = "Probably a vampire"  
  end
  if age != 2017-year && bread == 'no' && insurance == 'no'
    sentence = "Almost certainly a vampire"
  end
  if name == "Drake Cula" || name == "Tu Fang"
    sentence = "Definitely a vampire"
  end
  puts "#{sentence}"
  x += 1
  
end
# STETEMENTS BELOW JUST FOR TESTING 
  # if age == 2017-year && (bread == 'yes' || insurance == 'yes')
  #   puts "Probably not a vampire."
  # end
  # if age != 2017-year && (bread == 'no' || insurance == 'no')
  #   puts "Probably a vampire."
  # if age != 2017-year && bread == 'no' && insurance == 'no'
  #   puts "Almost certainly a vampire."
  # end
  # if name == "Drake Cula" || name == "Tu Fang" 
  # puts "Definitely a vampire."
  # end
  #   puts "Results inconclusive."
  # end
