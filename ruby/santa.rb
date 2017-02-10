class Santa
	attr_reader :reindeer_ranking	
	attr_accessor :gender, :ethnicity, :age

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_Cookies (cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa Instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday(age)
		@age = age
		age + 1
	end

	def get_mad_at (reindeer)
	position = @reindeer_ranking.index(reindeer)
	# puts "Santa got mad at #{reindeer} and has moved from the ##{position + 1} position to the last position:"
	@reindeer_ranking.delete_at(position)
	@reindeer_ranking.insert(-1, reindeer) 
	end

	## Old Getter and Setter Code
	#getter methods for attributes
	# def reindeer
	# 	@reindeer_ranking
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	#setter methods for attributes
	# def gender= (new_gender)
	# 	@gender = new_gender
	# end
end

	##Driver Code
# santa = Santa.new("Male", "Korean")
# santa.get_mad_at("Dasher")
# santa.gender = ("Female")

# p santa.age
# p santa.ethnicity
# p santa.celebrate_birthday(23)

# puts "Santa got mad at Dasher and has moved to last place:"
# santa.get_mad_at("Dasher") 

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethinicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

20.times {
	santas << Santa.new(example_genders.sample, example_ethinicities.sample)
}

###Question:###
#Is there a way to print the results of each santa after each initialization?
#Another way to phrase it given this code context, can I create a new instnace of Santa in the times iteration, but with each new instance, print out its gender, ethinicity, and age? 
#Currently if I place the puts statement in the times loop, it will print the same santa 10 times rather than running it as a loop. Does this mean I should use an entirely different loop to accomplish this?

santas.each { |santa_name|
	santa_name.age = rand(140) 
	puts "Gender: #{santa_name.gender}, Ethnicity: #{santa_name.ethnicity}, Age: #{santa_name.age}"
}

# example_genders.length.times do |i|
# 	santas << Santa.new(example_genders[i], example_ethinicities[i])
# end

# santas[0].speak
# santas[0].eat_milk_and_Cookies("oreo cookie")