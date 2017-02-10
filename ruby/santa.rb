class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_Cookies (cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize
		puts "Initializing Santa Instance..."
	end
end

santa = Santa.new
santa.speak
santa.eat_milk_and_Cookies("oreo cookie")