class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(times)
    times.times do 
      puts "Woof"
    end
  end
  
  def roll_over
    puts "rolls over"
  end
  
  def dog_year(human_years)
    dog_years = human_years*7
    puts "#{dog_years}"
  end 
  
  def get_beer(brand)
    puts "I got you some #{brand}"
  end 
  
  def initialize
    puts "Initilizing new puppy instance..."
  end
end

# -- DRIVER CODE
newpuppy = Puppy.new 
newpuppy.fetch("ball")
newpuppy.speak(3)
newpuppy.dog_year(8)
newpuppy.get_beer("Heineken")