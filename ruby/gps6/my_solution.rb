# I worked on this challenge [by myself, with: Seth Gerou].
# We spent [2] hours on this challenge. 

# EXPLANATION OF require_relative
# The require method will pull code from another file and sort of copy and paste that code into this working file.
# Relative - Path provided is relative to where we are. Relative offers a starting point beginning at this file.
# require_relative is for files we've written, and require is for code others have written.

require_relative 'state_data'

class VirusPredictor

# It's the first method that will run once this class is instantiated. Specifically, it's taking 3 arguments as inputs and assigning the values to the corresponding accessible attribute.

 def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls 2 methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private

# The predicted deaths method takes in a population density value and depending on how large that density it, it evaluates accordingly to each scenario, rounds down to the nearest whole number, and produces projected number of deaths.

 def predicted_deaths
    # predicted deaths is solely based on population density

    # densities = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1, 0 => 0.05}
    densities = {0 => 0.05, 50 => 0.1, 100 => 0.2, 150 => 0.3, 200 => 0.4}

    densities.each do |density, ratio|
       if @population_density >= density
         @number_of_deaths = (@population * ratio).floor
       end
     end

=begin
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
=end

    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

 end

# Evalutes speed of spread based on population density, runs different equation based on how dense. And prints line for console.

 def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # spread_rates = {200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2, 0 => 2.5}
    spread_rates = {0 => 2.5, 50 => 2, 100 => 1.5, 150 => 1, 200 => 0.5}

    spread_rates.each do |density, rate|
       if @population_density >= density
         speed = rate
       end
     end

=begin
   if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
=end

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

STATE_DATA.each do |state, value|

  my_state = VirusPredictor.new(state, value[:population_density], value[:population])
  my_state.virus_effects

end

#=======================================================================
# Reflection Section

# - One hash syntax is to use the symbol the :symbol which requries the hash rocket =>, otherwise another syntax is to use the syntactic sugar symbol: which incorporates the hash rocket included in the :.

# - Require relative means that it will require a file starting from the relative path of this current file. Require is the same thing, but without the starting directory point of this file.

# - Some ways to iterate through a hash is by using the .each method which provides the key and value variables in the enumerables. There's also each_with_index that provides the index number as well. But we just used the .each for this challenge.

# - What stood out as the variables is that they were methods. The method called 2 other methods, that was crazy and I didn't know methods could do that.

# - Iterating through a hash. That concept was solidifed in this challenge
