agent = ""
until agent == "quit" do
#Driver Code
puts "Hello, welcome to the secret agent name converter. Please enter your first and last name."
agent = gets.chomp
	if agent == "quit"
		break
	end
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

swap_real = swap (agent)
swap_real


def vow_adv(letters)
	vowels = ["a", "e", "i", "o", "u"]
	rot_vowels = vowels.rotate
	index_counter = 0
	nxt_vowel = ""
	down_array = letters.downcase!.split("") #downcase and creates array of user input
	#length = down_array.length #grabs length
	down_array.each do |letter|
		if vowels.include? (letter)
			vow_indx	= vowels.index(letter)

			#New Code, with edge case
			nxt_vowel = rot_vowels[vow_indx]
			down_array[index_counter] = nxt_vowel

			#Old Code, without edge case consideration
			# vow_indx_next = vow_indx + 1
			# nxt_vowel = vowels[vow_indx_next]
			# down_array[index_counter] = nxt_vowel

		end
	index_counter += 1
	end
down_array.join("")
end

vowel_change = vow_adv (swap_real)
vowel_change


def cons_adv(letters)
	indv_name = ""
	consonant = "BCDFGHJKLMNPQRSTVWXYZ"
	consonant_array = consonant.downcase!.split("")
	rot_cons = consonant_array.rotate
	index_counter = 0
	letters_array = letters.split("")
		letters_array.each do |letter|
			if consonant_array.include? (letter)
			cons_indx = consonant_array.index(letter)

			#New Code, with edge case
			nxt_cons = rot_cons[cons_indx]
			letters_array[index_counter] = nxt_cons

				#Old Code, without edge case consideration
				# nxt_cons_indx = cons_indx + 1
				# nxt_cons = consonant_array[nxt_cons_indx]
				# letters_array[index_counter] = nxt_cons

			end
		index_counter += 1
		end
	secret_name = letters_array.join("") #combined name without capitalized
	split_array = secret_name.split(" ")
		cap_word = split_array.map! { |word| word.to_s.capitalize}
		cap_word.join(" ")
end

p "Your new secret agent name is #{cons_adv (vowel_change)}! If you accept, exit the program by entering 'quit'."

end
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

=begin
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
=end

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


