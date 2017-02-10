# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily (words)
# 		words + "!!!" + " :)"
# 	end
# end

# # Driver Code
# p Shout.yell_angrily("NO")
# p Shout.yelling_happily("Yay")

# module Flight
# 	def take_off(altitude)
# 		puts "Taking off and ascending until reaching #{altitude}"
# 	end
# end

# class Bird
# 	include Flight
# end

# class Plane
# 	include Flight
# end

# #Driver Code
# bird = Bird.new
# puts bird.take_off(800)

# plane = Plane.new
# puts plane.take_off(30000)

module Shout
	def yell_angrily(words)
		words + "!!!" + " >:O"
	end

	def yell_happily(words)
		words + "!!!" + " :)"
	end
end

class Human
	include Shout
end

class Lion
	include Shout
end

#Driver Code
Bob = Human.new
p Bob.yell_happily("Woohoo")
p Bob.yell_angrily("NO WAY")

Simba = Lion.new
p Simba.yell_angrily("ROOAAARR")
p Simba.yell_happily("rawr")