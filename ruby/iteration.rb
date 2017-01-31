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

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
number_hash = {
	0 => "Zero",
	1 => "One",
	2 => "Two",
	3 => "Three",
	4 => "Four",
	5 => "Five",
	6 => "Six",
	7 => "Seven",
	8 => "Eight",
	9 => "Nine",
	10 => "Ten"
}

#Array Methods
p numbers.delete_if { |x| x < 5}
p numbers.select { |x| x < 5}
p numbers.drop_while { |x| x < 5}
p numbers.delete_if { |x| x >= 0}

#Hash Methods
p number_hash.delete_if {|key, value| key < 5}
p number_hash.select {|key, value| key > 5} 
p number_hash.keep_if { |key, value| key < 5}
p number_hash.has_value?("Zero")
p number_hash.has_value?("Twelve")







