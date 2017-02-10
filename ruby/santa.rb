class Santa
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
	end
#
	def about
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
end

santa = Santa.new

santa.speak
santa.eat_milk_and_Cookies("oreo cookie")