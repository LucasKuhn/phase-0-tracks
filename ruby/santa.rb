#--- BUSINESS CODE
class Santa

  def initialize (gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "Initializing Santa instance..."
  end
  age = 0
  reindeer_ranking = [
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
  def speak 
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a great #{cookie_type}!"
  end

end

#--- TEST CODE
santa1 = Santa.new("male","British")
santa1.speak
santa1.eat_milk_and_cookies("Milk Cookie")
p santa1.class

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

p santas




#--- DRIVER CODE