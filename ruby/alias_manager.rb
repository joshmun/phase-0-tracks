#Pseudocode
#Fake-Name Generator

#define a method with a string as a single parameter
#take the input and split it into an array
#take that input and swap or reverse the order
#combine them into a single array
#then take all of the vowels and shift them to next vowel
# => and take all of the consonants and shift them to next consonant
#print that baby


def swap(name)
	vowels = ["a", "e", "i", "o", "u"]
	name.split(" ").reverse.join(" ")	#reverses order of array
	name.map { |vowels| }  


		#rotates to next vowel
	#ind_name = name.split(" ") #.reverse.join(" ")
	#ind_name.reverse!
	#together = ind_name.join(" ")
	#vowels = together.select("a, e, i, o, u")
	#nvowels = vowels.next
	end


p swap("Felicia Torres")

=begin def v_forward(vowel)
	vowels = ["a", "e", "i", "o", "u"]
	vowel = vowel.split('')
	v_new = vowel.map do |char|
		if vowe

	end


p v_forward ("Torres Felicia")
=end