#Pseudocode
#Secret Agent Name Generator

#Initialize hash data structure, two arrays {:agent, :converted}
#Initialize agent empty string for user input
#Initialize final_name empty string for after conversion
#Initialize restart empty string to hold user input to restart method

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

secret_agent = {
	agent: [],
	converted: []
}

final_name = ""
restart = ""

until restart == "quit" do

	##Driver Code
	puts "Hello, welcome to the secret agent name converter. Please enter your first and last name."
	agent = gets.chomp
	
	secret_agent[:agent]<<agent
	
		def swap(name)
			arr_name = name.split(" ")
			rev_arr = arr_name.reverse
			rev = rev_arr.join(" ")
		end
		swap_real = swap (agent)
		swap_real #First and Last Name Swapped
		
		
		def vow_adv(letters)
			vowels = ["a", "e", "i", "o", "u"]
			rot_vowels = vowels.rotate
			index_counter = 0
			nxt_vowel = ""
			down_array = letters.downcase!.split("") #downcase and creates array of user input
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
		vowel_change #Vowels advanced in agent name
		
		
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
		final_name = cons_adv (vowel_change) #Add consonant advance with capitalizaton
		secret_agent[:converted]<<final_name
		
	puts "Your new secret agent name is #{final_name}!" 
	puts "If you accept, exit by entering 'quit'. Otherwise, enter again."
	restart = gets.chomp
		if restart == "quit" #Provides user to loop program until quit
			for i in 0...secret_agent[:agent].length
				puts "#{secret_agent[:converted][i]} is really #{secret_agent[:agent][i]}."
			end
			break
		else #Continues loop if user enters
		end
end