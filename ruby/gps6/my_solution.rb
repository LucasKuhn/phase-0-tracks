# Virus Predictor

# I worked on this challenge [BY MYSELF, with instructor Blake].
# We spent [1.2] hours on this challenge.

# EXPLANATION OF require_relative
# It calls another file inside the same folder
# And uses it code as it was it's.

require_relative 'state_data'

class VirusPredictor

  # Initialize is receiving 3 different input and setting them as Instant
  # Variables to be used in other methods inside the class with proper naming
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # It is first calling the method predicted_deaths giving it all data from the
  # current object (the current state) 
  # the predicted deaths receives the data and sets the number_of_deaths according to
  # the population density of the state (the bigger, the more deaths) 
  # the final number of deaths number is based on the population number and it is rounded down
  def virus_effects
    density_scenario
    predicted_deaths
    speed_of_spread
  end

  private
  
  # Added this method to get rid of the repetitive checking 
  def density_scenario
    if @population_density >= 200
      @scenario = 1
    elsif @population_density >= 150
      @scenario = 2
    elsif @population_density >= 100
      @scenario = 3
    elsif @population_density >= 50
      @scenario = 4
    else
      @scenario = 5
    end
  end
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @scenario == 1
      number_of_deaths = (@population * 0.4).floor
    elsif @scenario == 2
      number_of_deaths = (@population * 0.3).floor
    elsif @scenario == 3
      number_of_deaths = (@population * 0.2).floor
    elsif @scenario == 4
      number_of_deaths = (@population * 0.1).floor
    elsif @scenario == 5
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality yet.
    speed = 0.0

    if @scenario == 1
      speed += 0.5
    elsif @scenario == 2
      speed += 1
    elsif @scenario == 3
      speed += 1.5
    elsif @scenario == 4
      speed += 2
    elsif @scenario == 5
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state_name, population_hash|
  VirusPredictor.new(state_name,population_hash[:population_density],population_hash[:population]).virus_effects
end


#=======================================================================
# Reflection Section
#
# What are the differences between the two different hash syntaxes shown in the state_data file?
# One uses Strings and Arrow, which is very useful for unique things, like the name of the states
# The other uses symbol, which is useful for things that you will call over and over again, a variable
# That doesn't change and can be reused

#What does require_relative do? How is it different from require?
#It calls for another file inside the folder. Require needs a full path / file name

#What are some ways to iterate through a hash?
#In my opinion the best way is to use .each, but if you want to change things you can also use .map and .map!

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#The fact that I could take so many things out (like the method parameters) and it made the code so much easier to read

#What concept did you most solidify in this challenge?
#The difference between Strings and Symbols, and that methods should be used to do one thing only.