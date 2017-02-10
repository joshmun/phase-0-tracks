module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily (words)
		words + "!!!" + " :)"
	end
end

p Shout.yell_angrily("NO")
p Shout.yelling_happily("Yay")