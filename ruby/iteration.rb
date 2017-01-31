def method
	puts "A block has not run yet."
	yield("Hello", "World")
end

method { |word1, word2| puts "This block has now run: #{word1} #{word2}!"}

hollywood_stars = ["Daniel Radcliff", "Emma Watson", "Rupert Grint"]
harry_potter = { 
	"Daniel Radcliff" => "Harry Potter", 
	"Emma Watson" => "Hermoine Granger", 
	"Rupert Grint" => "Ron Weasley"
}

=begin hollywood_stars.each do |names|
	puts names
end
=end

hollywood_stars.map! do |names|
	puts names
	names + " :)"
end

puts hollywood_stars

harry_potter.each do |actor, character|
	puts "#{actor} plays the character #{character} in the Harry Potter movie series."
end