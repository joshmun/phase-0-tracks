#Pseudocode
#Fake-Name Generator

#define a method with a string as a single parameter
#take the input and split it into an array
#take that input and swap or reverse the order
#combine them into a single array
#then select for vowels

#identify the vowel
#if it is, identify the next vowel in the vowels array
#replace the element in downarray with the next vowel in vowels array

#includes, each with index 

#first get the index value from vowels
#get the vowel at index+1
#downarray.each with index
#downarray[index] = vowels[index + 1]

#
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
	vowels = ["a", "e", "i", "o", "u"]
	index_counter = 0
	down_array = letters.downcase!.split("") #downcase and creates array of user input
	#length = down_array.length #grabs length
	down_array.each do |letter|
		if vowels.include? (letter)
			#dwn_ary_indx =	down_array.index(letter)
			#p "dwn_ary_indx: #{dwn_ary_indx}"
			vow_indx	= vowels.index(letter)
			vow_indx_next = vow_indx + 1
			#p vow_indx_next
			nxt_vowel = vowels[vow_indx_next]
			#p nxt_vowel
			#p "nxt_vowel: #{nxt_vowel.class}"
			down_array[index_counter] = nxt_vowel
		end
	index_counter += 1
	end
down_array.join("")
end

vowel_change = vow_adv (swap_real)
p vowel_change

#Pseudocode
# Define a method that advances a letter to the next consonant
# It will take in the input from vowel_change = letters
# initialize index_counter = 0, we will map the change according to this counter
# Split letters into an array of elements = name_array

#Initialize each loop to do |letter|
	#if vowels.include? (letter) [if the vowels contains a letter from name_array]
	#then return letter [vowel]
	#else nxt_lttr = letter.next [push the consonant next]
		#if vowels.include? (nxt_lttr) [if the vowels include a letter from name_array]
		#then nxt_lttr.next [push the nxt_lttr as vowel to consonant]
		#end
	#index_counter += 1
	#end	
# name_array[index_counter] = nxt_lttr
#end


def cons_adv(letters)
	vowels = ["a", "e", "i", "o", "u"]
	index_counter = 0
	name_array = letters.split("")
	nxt_lttr = ""
		name_array.each do |letter|
			if vowels.include? (letter)
			return letter
			else letter.next!
				# if vowels.include? (nxt_lttr)
				# 	nxt_lttr.next
				# end
			end
		index_counter += 1
		name_array[index_counter] = letter
		end
	name_array.join("")
end

p cons_adv (vowel_change)

#if dwn_ary_indx == !index
=begin	
	index = 0
	 for i in 0..length do 
	 	puts i
	 	 if i == vowels
	 	 	vowels.index
	 end


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

	#p vow
		#rotates to next vowel
	#ind_name = name.split(" ") #.reverse.join(" ")
	#ind_name.reverse!
	#together = ind_name.join(" ")
	#vowels = together.select("a, e, i, o, u")
	#nvowels = vowels.next
	#end


#p swap("Felicia Torres")

 def v_forward(vowel)
	vowels = ["a", "e", "i", "o", "u"]
	vowel = vowel.split('')
	v_new = vowel.map do |char|
		if vowe

	end


p v_forward ("Torres Felicia")
=end



