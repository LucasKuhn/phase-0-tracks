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
