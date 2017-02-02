#Pseudocode
#Fake-Name Generator

#define a method with a string as a single parameter
#take the input and split it into an array
#take that input and swap or reverse the order
#combine them into a single array
#then select for vowels
# => match these vowels as an index against the vowels variable
# and rotate them to next vowel
# => and take all of the consonants and shift them to next consonant
#print that baby

def swap(name)
	arr_name = name.split(" ")
	rev_arr = arr_name.reverse
	rev = rev_arr.join(" ")
end

swap_real = swap ("Felicia Torres")
p swap_real

def vow_adv(letters)
	letters.downcase!
end

p vow_adv (swap_real)


=begin	
def swap(name)
	vowels = ["a", "e", "i", "o", "u"]
	name.split(" ").reverse.join(" ")	#reverses order of array
	letter = name.chars #breaks each character individual in array
	vow = letter.select { |v| v =~ /[aeiou]/} #selects for only the vowels in the string into a new array
		if vow.include? vowels

	if letter.include? vowels
			then vowels.rotate(1)[vowels.index(letter)]
		else 
			letter
		end
=end
	#p vow
		#rotates to next vowel
	#ind_name = name.split(" ") #.reverse.join(" ")
	#ind_name.reverse!
	#together = ind_name.join(" ")
	#vowels = together.select("a, e, i, o, u")
	#nvowels = vowels.next
	#end


#p swap("Felicia Torres")

=begin def v_forward(vowel)
	vowels = ["a", "e", "i", "o", "u"]
	vowel = vowel.split('')
	v_new = vowel.map do |char|
		if vowe

	end


p v_forward ("Torres Felicia")
=end