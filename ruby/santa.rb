#--- BUSINESS CODE
class Santa
  #This code does the same as the Getter and Setter (Commented Out below)
  attr_reader :age, :ethnicity
  attr_accessor :gender
  
  def initialize (gender,ethnicity)
    puts "Initializing Santa instance..."    
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = [
    "Rudolph",
    "Dasher",
    "Dancer",
    "Prancer",
    "Vixen",
    "Comet",
    "Cupid",
    "Donner",
    "Blitzen"
    ]
  end
  
  # #GETTER METHODS (Make things readable)
    # def age
    #   @age
    # end
    
    # def ethnicity
    #   @ethnicity
    # end
    
    # def gender
    #   @gender
    # end
  # #SETTER METHODS (Writable)
    # def gender=(new_gender)
    #   @gender = new_gender
    # end
    
  def speak 
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a great #{cookie_type}!"
  end
  
  def celebrate_birthday
    @age += 1 
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

end

#--- TEST CODE ----
santa1 = Santa.new("male","British")
santa1.speak
santa1.eat_milk_and_cookies("Milk Cookie")
santa1.get_mad_at("Vixen")
p santa1.gender
santa1.gender = "female"
p santa1.gender

# ---- DRIVER CODE ----
# santas =[]
# puts "How many santas you want to add?"
# amount = gets.chomp.to_i 
# number = 1 
# amount.times do 
#   puts "Type the gender of santa #{number}:"
#   gender = gets.chomp
#   puts "Type the ethnicity of santa #{number}:"
#   ethnicity = gets.chomp
#   santas << Santa.new(gender,ethnicity)
#   number += 1
# end

# ---- EXAMPLE: POSSIBLE SOLUTION 1 ---- 
  # santas = []
  # santas << Santa.new("agender", "black")
  # santas << Santa.new("female", "Latino")
  # santas << Santa.new("bigender", "white")
  # santas << Santa.new("male", "Japanese")
  # santas << Santa.new("female", "prefer not to say")
  # santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
  # santas << Santa.new("N/A", "N/A")

# ---- EXAMPLE: POSSIBLE SOLUTION 2 ---- 
  # santas = []
  # example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  # example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  # example_genders.length.times do |i|
  #   santas << Santa.new(example_genders[i], example_ethnicities[i])
  # end
