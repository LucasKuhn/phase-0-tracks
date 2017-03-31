puts "How many employees will be processed?"
employees = gets.chomp.to_i
count=0
until count == employees 
  puts "\nEmployee #{count+1}, What is your name?"
  name = gets.chomp
  puts "How old will you be the end of this year?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  year = gets.chomp.to_i
  puts "Would you like some fresh garlic bread?(yes/no)"
  bread = gets.chomp
  puts "Are in interested in the company's health insurance?(yes/no)"
  insurance = gets.chomp

  puts "List your allergies. Send 'done' when finished"
  choice = nil
  until choice == 'done'
    choice = gets.chomp
    if choice == 'sunshine'
      sentence = "Probably a vampire"
      break
    end

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
end

  puts "\n#{sentence}"
  count += 1
end
puts "\nActually, never mind! These questions are weird, we are all friends, let's be friends!"

# CODE BELOW JUST FOR INITIAL TESTING 
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
