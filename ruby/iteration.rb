#RELEASE 0
def method 
  puts "we will be yielding a block!"
  yield("something")
  puts "Now we returned from the block..."
end

method { |count| puts"We are in the yield! #{count}"}

#RELEASE 1
movies = ["titanic", "django", "the Hateful Eight"]

titanic = { 
  producer: "James Cameron",
  director: "James Cameron",
  genre: "Drama",
  main_actor: "Kate and Leo"
}
puts "Original Data"
p movies 
p titanic 

puts "Capitalizing using .each:"
movies.each do |movie|
  puts movie.capitalize
end

puts "Using .each on hash:"
titanic.each do |title, name|
  puts "titanic has a #{title} whose name is #{name}"
end

movies.map! do |movie|
  movie.capitalize
end
puts "After capitalizing using .map!:"
p movies

#RELEASE 2
numbers = [10,90,35,60,20,200]
titanic = { 
  producer: "James Cameron",
  director: "James Cameron",
  genre: "Drama",
  main: "Kate and Leo"
}

puts "Original data:"
p titanic 
p numbers 

puts "Deleting if bigger than 35:"
numbers.delete_if do |digit|
  digit > 35
end
p numbers

puts "Deleting if has more than 5 letters"
titanic.delete_if do |title,name|
  title.length > 5
end
p titanic

#Naming array and hash again since we changed it above
numbers = [10,90,35,60,20,200]
titanic = { 
  producer: "James Cameron",
  director: "James Cameron",
  genre: "Drama",
  main: "Kate and Leo"
}

puts "Keep if it has more than 5 letters"
titanic.keep_if do |title,name|
  title.length > 5
end
p titanic

puts "Keep if bigger than 35:"
numbers.keep_if do |digit|
  digit > 35
end
p numbers

#Naming array and hash again since we changed it above
numbers = [10,90,35,60,20,200]
titanic = { 
  producer: "James Cameron",
  director: "James Cameron",
  genre: "Drama",
  main: "Kate and Leo"
}

puts "Selecting only the even numbers"
numbers.select! do |digit|
  digit.even?
end 
p numbers 

puts "Selecting only keys that have 8 letters"
titanic.select! do |title, name|
  title.length == 8
end 
p titanic

#Naming array and hash again since we changed it above
numbers = [10,90,35,60,20,200]
titanic = { 
  producer: "James Cameron",
  director: "James Cameron",
  genre: "Drama",
  main: "Kate and Leo DiCaprio"
}

#Delete every number until one is bigger than 120
p numbers.drop_while {|digit| digit < 120 }
# The array remains unchanged
p numbers

#Delete every entry whose data has less that 14 letters
p titanic.drop_while {|title,name| name.length <= 14}
# The hash remains unchanged
p titanic