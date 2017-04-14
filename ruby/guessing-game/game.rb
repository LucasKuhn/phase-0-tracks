class GuessGame
  attr_reader :word_arr
  attr_reader :empty_arr
  attr_reader :guess_count
  attr_reader :victory
  
  def initialize(word)
    @word_arr = word.split('')
    @empty_arr = word.split('')
    @empty_arr.map! do |letter|
      letter = "_"
      end 
    @guess_count = word.length + 2
    @victory = false
  end
  
  def guess(guessed_letter)
    @word_arr.each_with_index do |letter,index|
      if letter == guessed_letter
      @empty_arr[index] = guessed_letter
      end
    end
    
    if @empty_arr == @word_arr
      @victory = true
    end
    
    @guess_count -= 1
  end
  
end

# ---- DRIVER CODE ---- #
puts "Welcome to the Word Guessing Game!"
puts "To start, give me your word! (Player One)"
word = gets.chomp
game = GuessGame.new(word)

# I added many lines to 'separate' player one and player two
30.times {puts ""}
puts "---------------------------------------"
puts "This is your empty board! You start with #{game.guess_count} guesses"

while !game.victory
  p game.empty_arr
  puts "You still have #{game.guess_count} guesses!"
  puts "Guess a letter:"
  letter = gets.chomp
  puts "---------------------------------------"
  if game.empty_arr.include?(letter) == true
    puts "You tried that letter already..."
  else 
    game.guess(letter)
  end
  break if game.guess_count == 0
end 

if game.victory == true
  puts "You won!"
  puts "The answer was: #{word}"
else
  puts "You lost! Better luck next time!"
  puts "The answer was: #{word}"
end

# ---- INITIAL PSEUDO-CODE ---- #
# --- IN DRIVER CODE  ---
# Input and Output 
# Ask for Secret Word 
# First User Sets the Secret Word 
# Ask Second User for Guesses until he discovers or fails
# -- IN BUSINESS CODE ---
# Create a Class 
# Define Methods 
# Guesses Are limited
# Make Amount of Guesses based on word length 
# Repeated Guesses do NOT count 
# The Guessing Player will recieve feedback
# EX: Secret Word 'ball', guess 'L': "---" will become "--LL"
# User should get a Congratulations for Victory, a Taunt if he loses